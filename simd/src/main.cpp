#ifndef MY_HEADER_H
#define MY_HEADER_H



#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>
#include "../include/Matrix.hpp"
#include <cmath>
#include <cstring>
#include <fstream>
#include <iostream>
#include <random>
#include <sstream>
#include <assert.h>
#include "../include/scalar.cpp"
using namespace std;

#endif

#define ROW 60000
#define COL 785
#define FEAT COL - 1
#define CLASSES 10
#define HIDDEN 10
#define MAX 60000
#define NORM 255  /// max value for normalization
using namespace std;







int main() {


  std::ifstream file("data.csv");
  if (!file.is_open()) {
    std::cerr << "Error opening file data.csv" << endl;
  }
  std::string line;
  const int features = 784;
  const int rows = 60000;
  const int hidden = 12;
  const int classes = 10;

  Matrix X_train;
  X_train.init(features, rows, new float[features * rows]);

  Matrix Y;  // Initialize matrix Y with 1 row and 60000 columns
  Y.init(rows, 1, new float[rows]);

  Matrix W1;
  W1.init(hidden, features, new float[hidden * features]);
  Matrix W2;
  W2.init(classes, hidden, new float[hidden * classes]);

  Matrix B1;
  B1.init(1, hidden, new float[hidden]);

  Matrix B2;
  B2.init(classes, 1, new float[classes]);

  Matrix Z1;
  Z1.init(hidden, rows, new float[hidden * rows]);

  Matrix A1;
  A1.init(hidden, rows, new float[hidden * rows]);

  Matrix Z2;
  Z2.init(classes, rows, new float[classes * rows]);

  Matrix A2;
  A2.init(rows,classes, new float[classes * rows]);

  Matrix Dz1;
  Dz1.init(hidden, rows, new float[hidden * rows]);

  Matrix Dz2;
  Dz2.init(rows, classes);

  Matrix Dw2;
  Dw2.init(classes, hidden);

  Matrix Dw1;
  Dw1.init(hidden, features);
  Matrix db2;
  db2.init( 1, classes);
  float db1;
  float relu_leak = 0.0;

  Matrix one_hot_y;
  one_hot_y.init(rows, classes);

  int row = 0;
  int col = 0;

  while (std::getline(file, line) && row < ROW) {
    std::istringstream iss(line);

    string s;
    col = 0;
    while (getline(iss, s, ',')) {
      if (col == 0) {
        Y.data[row] = stoi(s);  // Store column 0 in matrix Y
      } else {
        X_train.data[row * X_train.rows + (col - 1)] =
            stod(s) / (NORM);  // Store columns > 0 in matrix X_train
      }
      col++;
    }
    row++;
  }
  for (int i = 0; i < ROW; i++) {
    int index = Y.data[i];
    for (int j = 0; j < CLASSES; j++) {
      one_hot_y.data[j * rows + i] = (j == index) ? 1 : 0;
    }
  }

  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_real_distribution<float> dis(-1, 1);

  bool test = false;
  for (int i = 0; i < W1.rows; ++i) {
    for (int j = 0; j < W1.cols; ++j) {
      W1.data[i * W1.cols + j] = test ? 0.1 : dis(gen) * 1 / sqrt(HIDDEN);
    }
  }

  for (int i = 0; i < W2.rows; i++) {
    for (int j = 0; j < W2.cols; j++) {
      W2.data[i * W2.cols + j] = test ? 0.1 : dis(gen) * 1 / sqrt(HIDDEN);
    }
  }

  for (int i = 0; i < HIDDEN; i++) {
    B1.data[i] = test ? 0.1 : 0;
  }
  for (int i = 0; i < CLASSES; i++) {
    B2.data[i] = test ? 0.1 : 0;
  }

  // training leap

 // multiplyMatricesAVX512(W1, X_train, Z1);
  //reluAVX512(A1, B1, Z1);
  //multiplyMatricesAVX512(W2, A1, Z2);
  //softmax(Z2, A2);
  //matrix_difference(A2, one_hot_y,Dz2);
  //sum_along_axis(Dz2, db2, 1);
  //test_sum_along_axis();
  //multiplyMatrixByConstantAVX512(A2,100);
  return 0;
}
