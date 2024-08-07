#include <cmath>
#include <csignal>
#include <fstream>
#include <iostream>
#include <ostream>
#include <random>
#include <sstream>
using namespace std;

#define ROW 59999
#define COL 785
#define FEAT COL - 1
#define CLASSES 10
#define HIDDEN 10

double (*x_train)[FEAT] = new double[ROW][FEAT];
double *y = new double[ROW];

double w1[FEAT][HIDDEN];
double w2[HIDDEN][CLASSES];

double b1[HIDDEN];
double b2[CLASSES];
double (*z1)[HIDDEN] = new double[ROW][HIDDEN];
double (*z2)[CLASSES] = new double[ROW][CLASSES];
double (*a1)[HIDDEN] = new double[ROW][HIDDEN];
double (*a2)[HIDDEN] = new double[ROW][CLASSES];
double (*dz1)[HIDDEN] = new double[ROW][HIDDEN];
double (*dz2)[CLASSES] = new double[ROW][CLASSES];

double dw2[CLASSES][HIDDEN];
double db2[CLASSES];
double db1[HIDDEN];
double dw1[FEAT][HIDDEN];
double (*one_hot_y)[ROW] = new double[CLASSES][ROW];

int main() {
  std::ifstream file("data.csv");
  if (!file.is_open()) {
    std::cerr << "Error opening file data.csv" << endl;
  }
  std::string line;
  int row = 0;
  int col = 0;

  while (std::getline(file, line) && row < ROW) {
    std::istringstream iss(line);
    double value;
    while (iss >> value) {
      if (col == 0) {
        y[row] = static_cast<double>(value);
      } else {
        x_train[row][col - 1] = static_cast<double>(value);
      }
      col++;
    }
    col = 0;
    row++;
  }
  file.close();

  cout << "Read " << row << " rows" << endl;
  cout << x_train[0][0] << endl;

  // populate the weights;
  //
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_real_distribution<double> dis(0.0, 1.0);

  for (int i = 0; i < FEAT; i++) {
    for (int j = 0; j < HIDDEN; j++) {
      w1[i][j] = dis(gen);
    }
  }

  for (int i = 0; i < HIDDEN; i++) {
    for (int j = 0; j < CLASSES; j++) {
      w2[i][j] = dis(gen);
    }
  }

  for (int i = 0; i < HIDDEN; i++) {
    b1[i] = dis(gen);
  }
  for (int i = 0; i < HIDDEN; i++) {
    b2[i] = dis(gen);
  }

  for (int i = 0; i < ROW; i++) {
    for (int j = 0; j < CLASSES; j++) {
      one_hot_y[j][i] = 0;
    }
    one_hot_y[static_cast<int>(x_train[0][i])][i] = 1;
  }

  // should equal 1
  cout << one_hot_y[5][0] << endl;

  // training loop
  //
  //
  // we first calculate Z1 as the dot product of W1 and x_train
  //
  //
  for (int it = 0; it < 10; it++) {
    for (int i = 0; i < 1; i++) {
      // z1
      for (int i = 0; i < FEAT; i++) {
        for (int j = 0; j < ROW; j++) {
          for (int k = 1; k < HIDDEN; k++) {
            z1[j][i] = (w1[i][k] * x_train[j][i]) + b1[k];
            a1[i][j] = (z1[i][j] < 0) ? 0 : z1[i][j];
          }
        }
      }

      // pass through second layer ( dot product of w2 with a1 + the second bias
      // term)
      for (int i = 0; i < CLASSES; i++) {
        for (int j = 0; j < ROW; j++) {
          for (int k = 0; k < HIDDEN; k++) {
            z2[j][i] = (w2[k][i] * a1[k][j]) + b2[i];
          }
        }
      }
    }

    double exp_sum = 0.0;
    int max_idx = 0;
    int ground_truth = 0;  // the index value of the ground truth;
    int n_correct = 0;     // the number of correct predictions
    double exp_max = 0;
    double alpha = 0.4;

    /// In this loop we calculate the softmax of the z2 (a2), followed by the
    /// derivative dz2  as the absolute difference between a2 and y and db2
    /// which is the row wise sume of db2. Additionally we calculate the
    /// accuracy by checking the prediction (Z2) against the y value.
    for (int i = 0; i < ROW; i++) {
      for (int j = 0; j < CLASSES; j++) {
        a2[i][j] = exp(z2[i][j]);
        exp_sum += a2[j][i];
        dz2[i][j] = a2[i][j] - one_hot_y[j][i];
        db2[j] += dz2[i][j];
        b2[j] -= (db1[j] * alpha);
      }
      for (int j = 0; j < CLASSES; j++) {
        a2[i][j] /= exp_sum;  // calculate the softmax

        if (a2[i][j] > exp_max) {
          exp_max = a2[i][j];
          max_idx = j;

        }  // determine whether th
      }
      if (y[i] == max_idx) {
        n_correct += 1;
      }

      exp_sum = 0.0;
    }

    // calculate dW2 as the derivative of loss wrt W2 - this is the dot product
    // of dz2 (60000X10) with the transpose of  A1 (10x60000)

    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < CLASSES; j++) {
        for (int k = 0; k < ROW; k++) {
          dw2[i][j] += dz2[k][j] * a1[k][i];
          w2[i][j] -= (dw1[i][j] * alpha);  // update w2
        }
      }
    }

    // dZ1 : transpose of  W2  * dZ2 *  (relu derivative of Z1)
    //

    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < ROW; j++) {
        for (int k = 0; k < HIDDEN; k++) {
          dz1[j][i] += (w2[k][i] * dz2[j][i] * (z1[j][i] > 0 ? 1 : 0));
        }
        db1[i] += dz1[j][i];
        b1[i] -= (b1[i] * alpha);
      }
    }

    // dw1 the derivative of loss wrt w1(FEATxHIDDEN) = (10 x 59999) x (59999 X
    // 784)
    //

    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < FEAT; j++) {
        for (int k = 0; k < ROW; k++) {
          dw1[j][i] += dz1[i][k] * x_train[k][j];
          w1[j][i] -= (dw1[j][i] * alpha);
        }
      }
    }

    cout << "Accuracy is " << n_correct / (double)ROW << ",";
    cout << endl;
  }
  return 0;
}
