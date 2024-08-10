#include <csignal>
#include <fstream>
#include <iostream>
#include <ostream>
#include <random>
#include <sstream>
#include <string>
using namespace std;

#define ROW 59999
#define COL 785
#define FEAT COL - 1
#define CLASSES 10
#define HIDDEN 10
#define MAX 255  /// max value for normalization
double (*x_train)[ROW] = new double[FEAT][ROW];
int *y = new int[ROW];

double w1[HIDDEN][FEAT];
double w2[CLASSES][HIDDEN];

double b1[HIDDEN];
double b2[CLASSES];
double (*z1)[ROW] = new double[HIDDEN][ROW];
double (*a1)[ROW] = new double[HIDDEN][ROW];

double (*z2)[ROW] = new double[CLASSES][ROW];
double (*a2)[ROW] = new double[CLASSES][ROW];

double (*dz1)[ROW] = new double[HIDDEN][ROW];
double (*dz2)[ROW] = new double[CLASSES][ROW];

double dw2[CLASSES][HIDDEN];

double db2[CLASSES];
double db1[HIDDEN];

double (*dw1)[FEAT] = new double[HIDDEN][FEAT];
double (*one_hot_y)[ROW] = new double[CLASSES][ROW];

double exp_sum = 0.0;
int max_idx = 0;
int ground_truth = 0;  // the index value of the ground truth;
int n_correct = 0;     // the number of correct predictions
double exp_max = 0;
double alpha = 0.9;

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

    string s;
    while (getline(iss, s, ',') && col < COL) {
      if (col == 0) {
        y[row] = stoi(s);
      } else {
        x_train[col - 1][row] = stod(s) / MAX;
      }
      col++;
    }
    col = 0;
    row++;
  }

  file.close();

  // populate the weights;
  //
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_real_distribution<double> dis(-1, 1);

  for (int i = 0; i < HIDDEN; i++) {
    for (int j = 0; j < FEAT; j++) {
      w1[i][j] = dis(gen);
      /// ;
    }
  }

  for (int i = 0; i < CLASSES; i++) {
    for (int j = 0; j < HIDDEN; j++) {
      w2[i][j] = dis(gen);
    }
  }

  for (int i = 0; i < HIDDEN; i++) {
    b1[i] = dis(gen);
  }
  for (int i = 0; i < CLASSES; i++) {
    b2[i] = dis(gen);
  }

  for (int i = 0; i < ROW; i++) {
    for (int j = 0; j < CLASSES; j++) {
      one_hot_y[j][i] = 0.0;
    }
    one_hot_y[static_cast<int>(y[i])][i] = 1.0;
  }
  // should equal 1

  for (int it = 0; it < 10; it++) {
    // training loop
    //
    //
    // we first calculate Z1 as the dot product of W1 and x_train
    //
    //
    n_correct = 0;
    // z1
    // iterate over the rows of the left hand side, the columns of the right
    // hand side and the columns of the left hand side w1 has HIDDEN rows and
    // FEAT columns x_train has FEAT rows and ROW columns the left hand side
    // must have the same number of columns as the right hand side has rows.
    //

    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < ROW; j++) {
        z1[i][j] = 0.0;
        for (int k = 0; k < FEAT; k++) {
          z1[i][j] += w1[i][k] * x_train[k][j];
        }
        z1[i][j] += b1[i];
        a1[i][j] = (z1[i][j] < 0.0) ? 0.0 : z1[i][j];
      }
    }

    // pass through second layer ( dot product of w2 with a1 + the second bias
    // term)
    //
    /// In this loop we calculate the softmax of the z2 (a2), followed by the
    /// derivative dz2  as the absolute difference between a2 and y and db2
    /// which is the row wise sume of db2. Additionally we calculate the
    /// accuracy by checking the prediction (Z2) against the y value.

    // in the second layer we have w2 which has HIDDEN columns and  ClASSES rows
    // which we multiply by A1 which has ROW COLUMNS and HIDDEN rows. the result
    // will be a matrix with CLASSES columns (10) and ROW rows. We first iterate

    for (int i = 0; i < ROW; i++) {
      for (int j = 0; j < CLASSES; j++) {
        z2[j][i] = 0.0;  // initialize z2
        for (int k = 0; k < HIDDEN; k++) {
          z2[j][i] += (w2[j][k] * a1[k][i]);
        }
        z2[j][i] += b2[j];
      }
    }

    // We now need to calculate the softmax a2; in this loop we can also
    // calculate the prediction for each row;
    //
    //
    int n_correct = 0;
    for (int i = 0; i < ROW; i++) {
      double exp_sum = 0.0;
      for (int j = 0; j < CLASSES; j++) {
        a2[j][i] = exp(z2[j][i]);

        exp_sum += a2[j][i];
      }
      int prediction = 0;
      double max = 0;
      for (int j = 0; j < CLASSES; j++) {
        a2[j][i] /= exp_sum;
        if (a2[j][i] > max) {
          prediction += 1;
          max = (a2[j][i]);
        }
      }
      exp_sum = 0;

      if (y[i] == prediction) {
        n_correct += 1;
      }
    }

    // we now begin the backward pass we first calculate reset db2 and then
    // calculate dZ2 as the absolute difference between the prediction and the
    // true value;

    for (int i = 0; i < CLASSES; i++) {
      db2[i] = 0.0;
    }
    for (int i = 0; i < ROW; i++) {
      for (int j = 0; j < CLASSES; j++) {
        dz2[j][i] = a2[j][i] - one_hot_y[j][i];

        db2[j] += dz2[j][i];
      }
    }

    // calculate dW2 as the derivative of loss wrt W2 - this is the dot product
    // of dz2 (10)X6000 with the transpose of  A1 (60000 X10)
    //
    //
    //

    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < HIDDEN; j++) {
        dw2[i][j] = 0.0;

        for (int k = 0; k < ROW; k++) {
          dw2[i][j] += (dz2[i][k] * a1[j][k]);
        }
        dw2[i][j] /= MAX;
        // update w2
      }
    }

    // dZ1 : transpose of  W2  * dZ2 *  (relu derivative of Z1)
    //
    for (int i = 0; i < HIDDEN; i++) {
      db1[i] = 0.0;
      for (int j = 0; j < ROW; j++) {
        dz1[i][j] = 0.0;

        for (int k = 0; k < CLASSES; k++) {
          dz1[i][j] += (w2[k][i] * dz2[k][j]) * (z1[i][j] > 0 ? 1 : 0);
        }
      }
    }
    // dw1 the derivative of loss wrt w1(FEATxHIDDEN) = (10 x 59999) x (59999 X
    // 784)
    //
    //
    // dw1 is a HIDDEN X FEAT matrix produced by multiplying dz2 (10X 60000) by
    // the the transpose of x_train which is FEAT X  ROW

    for (int i = 0; i < CLASSES; i++) {
      db2[i] = 0.0;
      for (int j = 0; j < FEAT; j++) {
        dw1[i][j] = 0.0;
        for (int k = 0; k < ROW; k++) {
          dw1[i][j] += (dz2[i][k] * x_train[j][k]);
        }
        db2[i] += dw1[i][j];
      }
    }

    for (int i = 0; i < CLASSES; i++) {
      b2[i] -= (alpha * db2[i]);
      for (int j = 0; j < HIDDEN; j++) {
        w2[i][j] -= (dw2[i][j] * alpha);
      }
    }
    for (int i = 0; i < HIDDEN; i++) {
      b1[i] -= (alpha * db1[i]);
      for (int j = 0; j < FEAT; j++) {
        w1[i][j] -= (alpha * dw1[i][j]);
      }
    }

    cout << "Accuracy is " << n_correct / (double)ROW << ",";
    cout << endl;
  }
  return 0;
}
