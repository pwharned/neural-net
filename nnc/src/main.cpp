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

double w1[FEAT][HIDDEN];

double (*x_train)[FEAT] = new double[ROW][FEAT];
double *y = new double[ROW];
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

  double(*one_hot_y)[ROW] = new double[CLASSES][ROW];

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
  for (int i = 0; i < 1; i++) {
    // z1
    for (int i = 0; i < FEAT; i++) {
      for (int j = 0; j < ROW; j++) {
        for (int k = 1; k < HIDDEN; k++) {
          z1[j][i] = w1[i][k] * x_train[j][i] + b1[k];
        }
      }
    }

    // a1 is our output layer, we apply relu
    for (int i = 0; i < ROW; i++) {
      for (int j = 0; j < HIDDEN; j++) {
        a1[i][j] = (z1[i][j] < 0) ? 0 : z1[i][j];
      }
    }

    // pass through second layer
    for (int i = 0; i < CLASSES; i++) {
      for (int j = 0; j < ROW; j++) {
        for (int k = 0; k < HIDDEN; k++) {
          z2[i][j] = w2[i][k] * a1[k][j] + b2[k];
        }
      }
    }
  }

  cout << a1[ROW - 1][HIDDEN - 1] << endl;
  return 0;
}
