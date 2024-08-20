#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>

#include <chrono>
#include <cstring>
#include <fstream>
#include <iostream>
#include <random>
#include <sstream>

#define ROW 60000
#define COL 785
#define FEAT COL - 1
#define CLASSES 10
#define HIDDEN 10
#define MAX 60000
#define NORM 255  /// max value for normalization

using namespace std;
typedef struct {
  int rows;
  int cols;
  float* data;
  // Constructor-like function
  void init(int r, int c, float* values) {
    rows = r;
    cols = c;
    data = values;
  }
  template <typename T>
  void init(int r, int c) {
    rows = r;
    cols = c;
    data = new T[r * c];
  }

  // Function to display the matrix
  void display() const {
    for (int i = 0; i < rows; ++i) {
      for (int j = 0; j < cols; ++j) {
        std::cout << data[i * cols + j] << " ";
      }
      std::cout << std::endl;
    }
  }
  // Accessor for matrix elements
  float get(int r, int c) const { return data[r * cols + c]; }
  // Mutator for matrix elements
  void set(int r, int c, float value) { data[r * cols + c] = value; }
} Matrix;

void multiplyMatricesAVX512(const Matrix& A, const Matrix& B, Matrix& C) {
  if (A.cols != B.rows) {
    throw std::invalid_argument(
        "Matrix dimensions do not match for multiplication.");
  }

  const int prefetchOffset = 16;  // Prefetch 16 elements ahead
  const int unrollFactor = 4;     // Unroll the loop by a factor of 4
  const int simdWidth = 16;       // SIMD width for AVX-512

#pragma omp parallel for
  for (int i = 0; i < A.rows; ++i) {
    for (int j = 0; j < B.cols; j += unrollFactor) {
      __m512 sum[unrollFactor];
      sum[0] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[1] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[2] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[3] = _mm512_setzero_ps();  // Initialize sum to zero

      // Prefetch the first block of data
      _mm_prefetch(&A.data[i * A.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 0) * B.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 1) * B.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 2) * B.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 3) * B.cols], _MM_HINT_T0);

      // Calculate the number of full SIMD iterations
      int kFullIterations = A.cols / simdWidth;

      // Perform full SIMD iterations
      for (int k = 0; k < kFullIterations; ++k) {
        // Prefetch the next block of data
        if (k + prefetchOffset / simdWidth < kFullIterations) {
          _mm_prefetch(&A.data[i * A.cols +
                               (k + prefetchOffset / simdWidth) * simdWidth],
                       _MM_HINT_T0);

          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 0)],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 1)],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 2)],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 3)],
              _MM_HINT_T0);
        }

        __m512 a = _mm512_loadu_ps(&A.data[i * A.cols + k * simdWidth]);
        __m512 b;
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 0)]);
        sum[0] = _mm512_add_ps(sum[0], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 1)]);
        sum[1] = _mm512_add_ps(sum[1], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 2)]);
        sum[2] = _mm512_add_ps(sum[2], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 3)]);
        sum[3] = _mm512_add_ps(sum[3], _mm512_mul_ps(a, b));
      }

      // Handle the remaining elements (if any)
      int kRemaining = A.cols % simdWidth;
      if (kRemaining > 0) {
        for (int k = 0; k < kRemaining; ++k) {
          sum[0][k] +=
              A.data[i * A.cols + kFullIterations * simdWidth + k] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 0)];
          sum[1][k] +=
              A.data[i * A.cols + kFullIterations * simdWidth + k] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 1)];
          sum[2][k] +=
              A.data[i * A.cols + kFullIterations * simdWidth + k] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 2)];
          sum[3][k] +=
              A.data[i * A.cols + kFullIterations * simdWidth + k] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 3)];
        }
      }

      // Store the results with correct boundary handling
      for (int u = 0; u < unrollFactor; ++u) {
        if (j + u < C.cols) {
          float result[16];
          _mm512_storeu_ps(result, sum[u]);
          float sumResult = 0.0f;
          for (int k = 0; k < simdWidth; ++k) {
            sumResult += result[k];
          }
          C.data[i * C.cols + (j + u)] = sumResult;
        }
      }
    }
  }
}

void multiplyMatricesTransposeAVX512LT(const Matrix& A, const Matrix& B,
                                       Matrix& C) {
  if (A.rows != B.rows) {
    throw std::invalid_argument(
        "Matrix dimensions do not match for multiplication.");
  }

  const int prefetchOffset = 16;  // Prefetch 16 elements ahead
  const int unrollFactor = 4;     // Unroll the loop by a factor of 4
  const int simdWidth = 16;       // SIMD width for AVX-512

#pragma omp parallel for
  for (int i = 0; i < A.cols; ++i) {
    for (int j = 0; j < B.cols; j += unrollFactor) {
      __m512 sum[unrollFactor];
      sum[0] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[1] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[2] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[3] = _mm512_setzero_ps();  // Initialize sum to zero

      // Prefetch the first block of data
      _mm_prefetch(&A.data[i], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 0) * B.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 1) * B.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 2) * B.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[(j + 3) * B.cols], _MM_HINT_T0);

      // Calculate the number of full SIMD iterations
      int kFullIterations = A.rows / simdWidth;

      // Perform full SIMD iterations
      for (int k = 0; k < kFullIterations; ++k) {
        // Prefetch the next block of data
        if (k + prefetchOffset / simdWidth < kFullIterations) {
          _mm_prefetch(&A.data[i + (k + prefetchOffset / simdWidth) *
                                       simdWidth * A.cols],
                       _MM_HINT_T0);

          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 0)],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 1)],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 2)],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[(k + prefetchOffset / simdWidth) * simdWidth * B.cols +
                      (j + 3)],
              _MM_HINT_T0);
        }

        __m512 a = _mm512_loadu_ps(&A.data[i + k * simdWidth * A.cols]);
        __m512 b;
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 0)]);
        sum[0] = _mm512_add_ps(sum[0], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 1)]);
        sum[1] = _mm512_add_ps(sum[1], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 2)]);
        sum[2] = _mm512_add_ps(sum[2], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + (j + 3)]);
        sum[3] = _mm512_add_ps(sum[3], _mm512_mul_ps(a, b));
      }

      // Handle the remaining elements (if any)
      int kRemaining = A.rows % simdWidth;
      if (kRemaining > 0) {
        for (int k = 0; k < kRemaining; ++k) {
          sum[0][k] +=
              A.data[i + kFullIterations * simdWidth * A.cols + k * A.cols] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 0)];
          sum[1][k] +=
              A.data[i + kFullIterations * simdWidth * A.cols + k * A.cols] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 1)];
          sum[2][k] +=
              A.data[i + kFullIterations * simdWidth * A.cols + k * A.cols] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 2)];
          sum[3][k] +=
              A.data[i + kFullIterations * simdWidth * A.cols + k * A.cols] *
              B.data[(kFullIterations * simdWidth + k) * B.cols + (j + 3)];
        }
      }

      // Store the results with correct boundary handling
      for (int u = 0; u < unrollFactor; ++u) {
        if (j + u < C.cols) {
          float result[16];
          _mm512_storeu_ps(result, sum[u]);
          float sumResult = 0.0f;
          for (int k = 0; k < simdWidth; ++k) {
            sumResult += result[k];
          }
          C.data[i * C.cols + (j + u)] = sumResult;
        }
      }
    }
  }
}

void multiplyMatricesByTransposeAccessAVX512RT(const Matrix& A, const Matrix& B,
                                               Matrix& C) {
  if (A.cols != B.cols) {
    throw std::invalid_argument(
        "Matrix dimensions do not match for multiplication.");
  }

  const int prefetchOffset = 16;  // Prefetch 16 elements ahead
  const int unrollFactor = 4;     // Unroll the loop by a factor of 4
  const int simdWidth = 16;       // SIMD width for AVX-512

#pragma omp parallel for
  for (int i = 0; i < A.rows; ++i) {
    for (int j = 0; j < B.rows; j += unrollFactor) {
      __m512 sum[unrollFactor];
      sum[0] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[1] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[2] = _mm512_setzero_ps();  // Initialize sum to zero
      sum[3] = _mm512_setzero_ps();  // Initialize sum to zero

      // Prefetch the first block of data
      _mm_prefetch(&A.data[i * A.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[j + 0], _MM_HINT_T0);
      _mm_prefetch(&B.data[j + 1], _MM_HINT_T0);
      _mm_prefetch(&B.data[j + 2], _MM_HINT_T0);
      _mm_prefetch(&B.data[j + 3], _MM_HINT_T0);

      // Calculate the number of full SIMD iterations
      int kFullIterations = A.cols / simdWidth;

      // Perform full SIMD iterations
      for (int k = 0; k < kFullIterations; ++k) {
        // Prefetch the next block of data
        if (k + prefetchOffset / simdWidth < kFullIterations) {
          _mm_prefetch(&A.data[i * A.cols +
                               (k + prefetchOffset / simdWidth) * simdWidth],
                       _MM_HINT_T0);

          _mm_prefetch(
              &B.data[j + 0 + (k + prefetchOffset / simdWidth) * simdWidth],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[j + 1 + (k + prefetchOffset / simdWidth) * simdWidth],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[j + 2 + (k + prefetchOffset / simdWidth) * simdWidth],
              _MM_HINT_T0);
          _mm_prefetch(
              &B.data[j + 3 + (k + prefetchOffset / simdWidth) * simdWidth],
              _MM_HINT_T0);
        }

        __m512 a = _mm512_loadu_ps(&A.data[i * A.cols + k * simdWidth]);
        __m512 b;
        b = _mm512_loadu_ps(&B.data[j + 0 + k * simdWidth]);
        sum[0] = _mm512_add_ps(sum[0], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[j + 1 + k * simdWidth]);
        sum[1] = _mm512_add_ps(sum[1], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[j + 2 + k * simdWidth]);
        sum[2] = _mm512_add_ps(sum[2], _mm512_mul_ps(a, b));
        b = _mm512_loadu_ps(&B.data[j + 3 + k * simdWidth]);
        sum[3] = _mm512_add_ps(sum[3], _mm512_mul_ps(a, b));
      }

      // Handle the remaining elements (if any)
      int kRemaining = A.cols % simdWidth;
      if (kRemaining > 0) {
        for (int k = 0; k < kRemaining; ++k) {
          sum[0][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] *
                       B.data[j + 0 + kFullIterations * simdWidth + k];
          sum[1][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] *
                       B.data[j + 1 + kFullIterations * simdWidth + k];
          sum[2][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] *
                       B.data[j + 2 + kFullIterations * simdWidth + k];
          sum[3][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] *
                       B.data[j + 3 + kFullIterations * simdWidth + k];
        }
      }

      // Store the results with correct boundary handling
      for (int u = 0; u < unrollFactor; ++u) {
        if (j + u < C.cols) {
          float result[16];
          _mm512_storeu_ps(result, sum[u]);
          float sumResult = 0.0f;
          for (int k = 0; k < simdWidth; ++k) {
            sumResult += result[k];
          }
          C.data[i * C.cols + (j + u)] = sumResult;
        }
      }
    }
  }
}

int test() {
  // Example usage

  const int rowsA = 60000;
  const int colsA = 784;
  const int colsB = 10;

  Matrix A;
  A.rows = rowsA;
  A.cols = colsA;
  A.data = new float[rowsA * colsA];
  std::memset(A.data, 0, rowsA * colsA * sizeof(float));
  for (int i = 0; i < rowsA * colsA; ++i) {
    A.data[i] = 1.0f;
  }

  Matrix B;
  B.rows = colsA;
  B.cols = colsB;
  B.data = new float[colsA * colsB];
  std::memset(B.data, 0, colsA * colsB * sizeof(float));
  for (int i = 0; i < colsA * colsB; ++i) {
    B.data[i] = 2.0f;
  }

  Matrix C;
  C.rows = rowsA;
  C.cols = colsB;
  C.data = new float[rowsA * colsB];
  std::memset(C.data, 0, rowsA * colsB * sizeof(float));

  auto start = std::chrono::high_resolution_clock::now();
  multiplyMatricesAVX512(A, B, C);
  multiplyMatricesAVX512(A, B, C);
  multiplyMatricesAVX512(A, B, C);
  multiplyMatricesAVX512(A, B, C);

  auto end = std::chrono::high_resolution_clock::now();

  std::cout << "Time taken for matrix multiplication: "
            << std::chrono::duration_cast<std::chrono::milliseconds>(end -
                                                                     start)
                   .count()
            << " ms" << std::endl;

  // Verify the result
  for (int i = 0; i < rowsA; ++i) {
    for (int j = 0; j < colsB; ++j) {
      if (C.data[i * colsB + j] != colsA * 2.0f) {
        std::cerr << "Error in matrix multiplication result!" << std::endl;
        return 1;
      }
    }
  }

  delete[] A.data;
  delete[] B.data;
  delete[] C.data;

  return 0;
}

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
  A2.init(classes, rows, new float[classes * rows]);

  Matrix Dz1;
  Dz1.init(hidden, rows, new float[hidden * rows]);

  Matrix Dz2;
  Dz2.init<float>(hidden, rows);

  Matrix Dw2;
  Dw2.init<float>(classes, hidden);

  Matrix Dw1;
  Dw1.init<float>(hidden, features);
  float db2;
  float db1;
  float relu_leak = 0.0;

  Matrix one_hot_y;
  one_hot_y.init<float>(classes, rows);

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

  for (int i = 0; i < CLASSES; i++) {
    for (int j = 0; j < HIDDEN; j++) {
      W2.data[i * CLASSES + j] = test ? 0.1 : dis(gen) * 1 / sqrt(HIDDEN);
    }
  }

  for (int i = 0; i < HIDDEN; i++) {
    B1.data[i] = test ? 0.1 : 0;
  }
  for (int i = 0; i < CLASSES; i++) {
    B2.data[i] = test ? 0.1 : 0;
  }

  cout << W1.cols << endl;
  cout << X_train.rows << endl;
  multiplyMatricesAVX512(W1, X_train, Z1);

#pragma omp parallel
#pragma clang loop vectorize_width(2) interleave_count(2)
  for (int i = 0; i < A1.rows; i++) {
    for (int j = 0; j < A1.cols; j++) {
      Z1.data[i * A1.cols + j] += B1.data[i];
      A1.data[i * A1.cols + j] =
          (Z1.data[i * A1.cols + j] <= 0) ? 0 : Z1.data[i * A1.cols + j];
    }
  }

  A1.display();
  return 0;
}
