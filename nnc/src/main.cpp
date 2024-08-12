#include <bits/stdc++.h>
#include <strings.h>

#include <cmath>
#include <csignal>
#include <fstream>
#include <iostream>
#include <ostream>
#include <random>
#include <sstream>
#include <string>

using namespace std;

#define ROW 60000
#define COL 785
#define FEAT COL - 1
#define CLASSES 10
#define HIDDEN 11
#define MAX 60000
#define NORM 255  /// max value for normalization
const double euler = 2.71828182845904523536;

typedef long double precision;
precision (*x_train)[ROW] = new precision[FEAT][ROW];
int *y = new int[ROW];

precision w1[HIDDEN][FEAT];
precision w2[CLASSES][HIDDEN];
precision w2T[HIDDEN][CLASSES];
precision b1[HIDDEN];
precision b2[CLASSES];
precision (*z1)[ROW] = new precision[HIDDEN][ROW];
precision (*a1)[ROW] = new precision[HIDDEN][ROW];

precision (*z2)[ROW] = new precision[CLASSES][ROW];
precision (*a2)[ROW] = new precision[CLASSES][ROW];

precision (*dz1)[ROW] = new precision[HIDDEN][ROW];
precision (*dz2)[ROW] = new precision[CLASSES][ROW];

precision dw2[CLASSES][HIDDEN];

precision db2;
precision db1;

precision (*dw1)[FEAT] = new precision[HIDDEN][FEAT];
int (*one_hot_y)[ROW] = new int[CLASSES][ROW];

int n_correct = 0;  // the number of correct predictions
precision alpha = 0.9;

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
        x_train[col - 1][row] = stod(s) / (NORM);
      }
      col++;
    }
    col = 0;
    row++;
  }

  file.close();
  // one hot encoding
  //
  for (int i = 0; i < ROW; i++) {
    int index = y[i];
    for (int j = 0; j < CLASSES; j++) {
      one_hot_y[j][i] = (j == index) ? 1 : 0;
    }
  }

  // populate the weights;
  //
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_real_distribution<precision> dis(0, 1);

  bool test = false;
  for (int i = 0; i < HIDDEN; i++) {
    for (int j = 0; j < FEAT; j++) {
      w1[i][j] = test ? 0.05 : dis(gen) - .5;
      /// ;
    }
  }

  for (int i = 0; i < CLASSES; i++) {
    for (int j = 0; j < HIDDEN; j++) {
      w2[i][j] = test ? 0.05 : dis(gen) - .5;
    }
  }

  for (int i = 0; i < HIDDEN; i++) {
    b1[i] = test ? 0.05 : dis(gen) - .5;
  }
  for (int i = 0; i < CLASSES; i++) {
    b2[i] = test ? 0.05 : dis(gen) - .5;
  }

  while (n_correct / (precision)ROW < .95) {
    // Z1 = W1.dot(X_train) + b1
    // A1 = RelU(Z1)
    //

    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < ROW; j++) {
        z1[i][j] = 0.0;
        for (int k = 0; k < FEAT; k++) {
          z1[i][j] += w1[i][k] * x_train[k][j];
        }
        z1[i][j] += b1[i];
        a1[i][j] = (z1[i][j] <= 0.0) ? 0.0 : z1[i][j];
      }
    }

    //
    // Z2 = W2.dot(A1) + b2
    //
    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < ROW; j++) {
        z2[i][j] = 0.0;  // initialize z2
        for (int k = 0; k < HIDDEN; k++) {
          z2[i][j] += (w2[i][k] * a1[k][j]);
        }
        z2[i][j] += b2[i];
      }
    }

    int n_correct = 0;
    for (int i = 0; i < ROW; i++) {
      precision exp_sum = 0.0;
      for (int j = 0; j < CLASSES; j++) {
        a2[j][i] = pow(euler, z2[j][i]);

        exp_sum += a2[j][i];
      }
      int prediction = 0;
      precision max = 0;
      for (int j = 0; j < CLASSES; j++) {
        a2[j][i] /= exp_sum;
        if (a2[j][i] > max) {
          prediction += 1;
          max = (a2[j][i]);
        }
      }

      if (y[i] == prediction) {
        n_correct += 1;
      }
    }

    db2 = 0.0;
    for (int i = 0; i < ROW; i++) {
      for (int j = 0; j < CLASSES; j++) {
        dz2[j][i] = a2[j][i] - one_hot_y[j][i];
        db2 += dz2[j][i];
      }
    }
    db2 /= MAX;

    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < HIDDEN; j++) {
        dw2[i][j] = 0.0;
        for (int k = 0; k < ROW; k++) {
          dw2[i][j] += (dz2[i][k] * a1[j][k]);
        }
        dw2[i][j] /= MAX;
      }
    }

    db1 = 0.0;
    // dZ1 = W2.T.dot(dZ2) * ReLU_deriv(Z1)
    //// this is incorrect
    ///
    ///
    ///

    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < ROW; j++) {
        dz1[i][j] = 0.0;

        for (int k = 0; k < CLASSES; k++) {
          dz1[i][j] += (w2[k][i] * dz2[k][j]);
        }

        dz1[i][j] *= (z1[i][j] <= 0 ? 0 : 1);

        db1 += dz1[i][j];
      }
    }

    db1 /= MAX;
    for (int i = 0; i < HIDDEN; i++) {
      for (int j = 0; j < FEAT; j++) {
        dw1[i][j] = 0.0;
        for (int k = 0; k < ROW; k++) {
          dw1[i][j] += (dz1[i][k] * x_train[j][k]);
        }
        dw1[i][j] /= MAX;
      }
    }
    // dw2 appears to be correct, but not dW1
    // dw1 is incorrect because dz1 is incorrect
    // dz1 is based on dz2 and w2. dz2 appears to be correct. w2 must be
    // correct.
    // cout << w2[0][9] << endl;
    for (int i = 0; i < CLASSES; i++) {
      b2[i] -= (alpha * db2);
      for (int j = 0; j < HIDDEN; j++) {
        w2[i][j] -= (dw2[i][j] * alpha);
      }
    }

    for (int i = 0; i < HIDDEN; i++) {
      b1[i] -= (alpha * db1);
      for (int j = 0; j < FEAT; j++) {
        w1[i][j] -= (alpha * dw1[i][j]);
      }
    }

    cout << "Accuracy is " << n_correct / (double)ROW << endl;
  }
  return 0;
}
