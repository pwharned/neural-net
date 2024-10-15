#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>

#include <chrono>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iostream>
#include <random>
#include <sstream>
#include <assert.h>
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

void softmax(const Matrix& a, const Matrix& t) {
  #pragma omp parallel for
  for (int i = 0; i < a.rows; ++i) {
    // Step 1: Compute the maximum value in the row to improve numerical stability
    __m512 max_vec = _mm512_set1_ps(-INFINITY);
    int j;
    for (j = 0; j + 15 < a.cols; j += 16) {
        _mm_prefetch((const char*)&a.data[i * a.cols + j + 16], _MM_HINT_T0);
        
      __m512 v = _mm512_loadu_ps(&a.data[i * a.cols + j]);
      max_vec = _mm512_max_ps(max_vec, v);
    }
    float max_vals[16];
    _mm512_storeu_ps(max_vals, max_vec);

    // Unrolled loop to find the maximum value in max_vals
    float max_val = max_vals[0];
    max_val = max_vals[1] > max_val ? max_vals[1] : max_val;
    max_val = max_vals[2] > max_val ? max_vals[2] : max_val;
    max_val = max_vals[3] > max_val ? max_vals[3] : max_val;
    max_val = max_vals[4] > max_val ? max_vals[4] : max_val;
    max_val = max_vals[5] > max_val ? max_vals[5] : max_val;
    max_val = max_vals[6] > max_val ? max_vals[6] : max_val;
    max_val = max_vals[7] > max_val ? max_vals[7] : max_val;
    max_val = max_vals[8] > max_val ? max_vals[8] : max_val;
    max_val = max_vals[9] > max_val ? max_vals[9] : max_val;
    max_val = max_vals[10] > max_val ? max_vals[10] : max_val;
    max_val = max_vals[11] > max_val ? max_vals[11] : max_val;
    max_val = max_vals[12] > max_val ? max_vals[12] : max_val;
    max_val = max_vals[13] > max_val ? max_vals[13] : max_val;
    max_val = max_vals[14] > max_val ? max_vals[14] : max_val;
    max_val = max_vals[15] > max_val ? max_vals[15] : max_val;

    for (; j < a.cols; ++j) {
      if (a.data[i * a.cols + j] > max_val) {
        max_val = a.data[i * a.cols + j];
      }
    }

    // Step 2: Compute the sum of exponentiated values using AVX-512
    __m512 sum_exp = _mm512_setzero_ps();
    for (j = 0; j + 15 < a.cols; j += 16) {
        _mm_prefetch((const char*)&a.data[i * a.cols + j + 16], _MM_HINT_T0);
        
      __m512 v = _mm512_loadu_ps(&a.data[i * a.cols + j]);
      v = _mm512_sub_ps(v, _mm512_set1_ps(max_val));
      float temp[16];
      _mm512_storeu_ps(temp, v);

      // Unrolled loop for exponential calculation
      temp[0] = std::exp(temp[0]);
      temp[1] = std::exp(temp[1]);
      temp[2] = std::exp(temp[2]);
      temp[3] = std::exp(temp[3]);
      temp[4] = std::exp(temp[4]);
      temp[5] = std::exp(temp[5]);
      temp[6] = std::exp(temp[6]);
      temp[7] = std::exp(temp[7]);
      temp[8] = std::exp(temp[8]);
      temp[9] = std::exp(temp[9]);
      temp[10] = std::exp(temp[10]);
      temp[11] = std::exp(temp[11]);
      temp[12] = std::exp(temp[12]);
      temp[13] = std::exp(temp[13]);
      temp[14] = std::exp(temp[14]);
      temp[15] = std::exp(temp[15]);

      v = _mm512_loadu_ps(temp);
      sum_exp = _mm512_add_ps(sum_exp, v);
    }
    float sum_exp_scalar = 0.0f;
    _mm512_storeu_ps(&sum_exp_scalar, sum_exp);
    for (int k = 0; k < 16; ++k) {
      sum_exp_scalar += ((float*)&sum_exp)[k];
    }
    for (; j < a.cols; ++j) {
      sum_exp_scalar += std::exp(a.data[i * a.cols + j] - max_val);
    }

    // Step 3: Compute the softmax values using AVX-512
    for (j = 0; j + 15 < a.cols; j += 16) {
        _mm_prefetch((const char*)&a.data[i * a.cols + j + 16], _MM_HINT_T0);
        
      __m512 v = _mm512_loadu_ps(&a.data[i * a.cols + j]);
      v = _mm512_sub_ps(v, _mm512_set1_ps(max_val));
      float temp[16];
      _mm512_storeu_ps(temp, v);

      // Unrolled loop for exponential and division
      temp[0] = std::exp(temp[0]) / sum_exp_scalar;
      temp[1] = std::exp(temp[1]) / sum_exp_scalar;
      temp[2] = std::exp(temp[2]) / sum_exp_scalar;
      temp[3] = std::exp(temp[3]) / sum_exp_scalar;
      temp[4] = std::exp(temp[4]) / sum_exp_scalar;
      temp[5] = std::exp(temp[5]) / sum_exp_scalar;
      temp[6] = std::exp(temp[6]) / sum_exp_scalar;
      temp[7] = std::exp(temp[7]) / sum_exp_scalar;
      temp[8] = std::exp(temp[8]) / sum_exp_scalar;
      temp[9] = std::exp(temp[9]) / sum_exp_scalar;
      temp[10] = std::exp(temp[10]) / sum_exp_scalar;
      temp[11] = std::exp(temp[11]) / sum_exp_scalar;
      temp[12] = std::exp(temp[12]) / sum_exp_scalar;
      temp[13] = std::exp(temp[13]) / sum_exp_scalar;
      temp[14] = std::exp(temp[14]) / sum_exp_scalar;
      temp[15] = std::exp(temp[15]) / sum_exp_scalar;

      v = _mm512_loadu_ps(temp);
      _mm512_storeu_ps(&t.data[i * a.cols + j], v);
    }
    for (; j < a.cols; ++j) {
      t.data[i * a.cols + j] = std::exp(a.data[i * a.cols + j] - max_val) / sum_exp_scalar;
    }
  }
  }




void test_softmax() {
  Matrix mat;
  mat.init<float>(3, 3);
  Matrix out;
  out.init<float>(3,3);
  // Set values
  mat.set(0, 0, 1.0f);
  mat.set(0, 1, 2.0f);
  mat.set(0, 2, 3.0f);
  mat.set(1, 0, 4.0f);
  mat.set(1, 1, 5.0f);
  mat.set(1, 2, 6.0f);
  mat.set(2, 0, 7.0f);
  mat.set(2, 1, 8.0f);
  mat.set(2, 2, 9.0f);

  // Calculate softmax
  softmax(mat, out);

  // Expected softmax values (calculated manually or using a known good implementation)
  float expected[3][3] = {
    {0.0900306, 0.244728, 0.665241},
    {0.0900306, 0.244728, 0.665241},
    {0.0900306, 0.244728, 0.665241}
  };

  // Tolerance for floating-point comparison
  const float tolerance = 1e-6;

  // Validate the output
  for (int i = 0; i < 3; ++i) {
    for (int j = 0; j < 3; ++j) {
      assert(std::abs(out.get(i, j) - expected[i][j]) < tolerance);
    }
  }

  std::cout << "Softmax test passed!" << std::endl;
}



void multiplyMatricesAVX512(const Matrix& A, const Matrix& B, Matrix& C) {
    if (A.cols != B.rows) {
        throw std::invalid_argument("Matrix dimensions do not match for multiplication.");
    }

    const int prefetchOffset = 16;  // Prefetch 16 elements ahead
    const int unrollFactor = 4;     // Unroll the loop by a factor of 4
    const int simdWidth = 16;       // SIMD width for AVX-512

    // Ensure the result matrix C is initialized to zero
    std::memset(C.data, 0, C.rows * C.cols * sizeof(float));

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

      int index;
      int index2;
            // Perform full SIMD iterations
            for (int k = 0; k < kFullIterations; ++k) {
                // Prefetch the next block of data
           index = (k + prefetchOffset /simdWidth ) * simdWidth * B.cols;
          
                _mm_prefetch(&A.data[i * A.cols + (k + prefetchOffset / simdWidth) * simdWidth], _MM_HINT_T0);
                _mm_prefetch(&B.data[index + (j + 0)], _MM_HINT_T0);
                _mm_prefetch(&B.data[index + (j + 1)], _MM_HINT_T0);
                _mm_prefetch(&B.data[index + (j + 2)], _MM_HINT_T0);
                _mm_prefetch(&B.data[index +  (j + 3)], _MM_HINT_T0);

                __m512 a = _mm512_loadu_ps(&A.data[i * A.cols + k * simdWidth]);
                __m512 b;
                index = k*simdWidth * B.cols;
                b = _mm512_loadu_ps(&B.data[index +  (j + 0)]);
                sum[0] = _mm512_fmadd_ps(a, b, sum[0]);
                b = _mm512_loadu_ps(&B.data[index + + (j + 1)]);
                sum[1] = _mm512_fmadd_ps(a, b, sum[1]);
                b = _mm512_loadu_ps(&B.data[index + (j + 2)]);
                sum[2] = _mm512_fmadd_ps(a, b, sum[2]);
                b = _mm512_loadu_ps(&B.data[index + (j + 3)]);
                sum[3] = _mm512_fmadd_ps(a, b, sum[3]);
            }

            // Handle the remaining elements (if any)
            int kRemaining = A.cols % simdWidth;
            for (int k = 0; k < kRemaining; ++k) {

        index = i * A.cols + kFullIterations * simdWidth + k;
        index2 = (kFullIterations * simdWidth +k ) * B.cols;
                sum[0][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] * B.data[index2 +  (j + 0)];
                sum[1][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] * B.data[index2 + (j + 1)];
                sum[2][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] * B.data[index2 + (j + 2)];
                sum[3][k] += A.data[i * A.cols + kFullIterations * simdWidth + k] * B.data[index2 +  (j + 3)];
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



int testMatrix() {
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

  std::cout << "Time taken for four matrix multiplications: "
            << std::chrono::duration_cast<std::chrono::milliseconds>(end -
                                                                     start)
                   .count()
            << " ms" << std::endl;
  auto start2 = std::chrono::high_resolution_clock::now();
  multiplyMatricesAVX512(A, B, C);
  multiplyMatricesAVX512(A, B, C);
  multiplyMatricesAVX512(A, B, C);
  multiplyMatricesAVX512(A, B, C);

  auto end2 = std::chrono::high_resolution_clock::now();

  std::cout << "Time taken for four matrix multiplications: "
            << std::chrono::duration_cast<std::chrono::milliseconds>(end2 -
                                                                     start2)
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


void verifyMatrixMultiplication () {

  Matrix A;
  A.cols = 2;
  A.rows = 3;

  float d[6] = {1.0f, 2.0f,3.0f,4.0f, 5.0f, 6.0f};
  float d2[6] = {1.0f, 3.0f, 5.0f,2.0f,4.0f,6.0f};
  A.data =  d;
  Matrix B;
  B.rows = 2;
  B.cols = 3;
  B.data = d2;
  Matrix C;
  C.rows = 3;
  C.cols = 3;
  C.data = new float[C.rows * C.cols];

multiplyMatricesAVX512(A,B,C);
  C.display();


}


void matrix_difference(const Matrix& mat1, const Matrix& mat2, Matrix& result) {
  assert(mat1.rows == mat2.rows && mat1.cols == mat2.cols);
  assert(result.rows == mat1.rows && result.cols == mat1.cols);

  int rows = mat1.rows;
  int cols = mat1.cols;
  #pragma omp parallel for
  for (int i = 0; i < rows; ++i) {
    int j;
    for (j = 0; j + 15 < cols; j += 16) {
      result.set(i, j, mat1.get(i, j) - mat2.get(i, j));
      result.set(i, j + 1, mat1.get(i, j + 1) - mat2.get(i, j + 1));
      result.set(i, j + 2, mat1.get(i, j + 2) - mat2.get(i, j + 2));
      result.set(i, j + 3, mat1.get(i, j + 3) - mat2.get(i, j + 3));
      result.set(i, j + 4, mat1.get(i, j + 4) - mat2.get(i, j + 4));
      result.set(i, j + 5, mat1.get(i, j + 5) - mat2.get(i, j + 5));
      result.set(i, j + 6, mat1.get(i, j + 6) - mat2.get(i, j + 6));
      result.set(i, j + 7, mat1.get(i, j + 7) - mat2.get(i, j + 7));
      result.set(i, j + 8, mat1.get(i, j + 8) - mat2.get(i, j + 8));
      result.set(i, j + 9, mat1.get(i, j + 9) - mat2.get(i, j + 9));
      result.set(i, j + 10, mat1.get(i, j + 10) - mat2.get(i, j + 10));
      result.set(i, j + 11, mat1.get(i, j + 11) - mat2.get(i, j + 11));
      result.set(i, j + 12, mat1.get(i, j + 12) - mat2.get(i, j + 12));
      result.set(i, j + 13, mat1.get(i, j + 13) - mat2.get(i, j + 13));
      result.set(i, j + 14, mat1.get(i, j + 14) - mat2.get(i, j + 14));
      result.set(i, j + 15, mat1.get(i, j + 15) - mat2.get(i, j + 15));
    }
    for (; j < cols; ++j) {
      result.set(i, j, mat1.get(i, j) - mat2.get(i, j));
    }
  }
}


void test_matrix_difference() {
  // Create and initialize matrices
  Matrix mat1, mat2, result;
  mat1.init<float>(3, 3);
  mat2.init<float>(3, 3);
  result.init<float>(3, 3);

  // Set values for mat1
  mat1.set(0, 0, 1.0f);
  mat1.set(0, 1, 2.0f);
  mat1.set(0, 2, 3.0f);
  mat1.set(1, 0, 4.0f);
  mat1.set(1, 1, 5.0f);
  mat1.set(1, 2, 6.0f);
  mat1.set(2, 0, 7.0f);
  mat1.set(2, 1, 8.0f);
  mat1.set(2, 2, 9.0f);

  // Set values for mat2
  mat2.set(0, 0, 1.0f);
  mat2.set(0, 1, 1.0f);
  mat2.set(0, 2, 1.0f);
  mat2.set(1, 0, 1.0f);
  mat2.set(1, 1, 1.0f);
  mat2.set(1, 2, 1.0f);
  mat2.set(2, 0, 1.0f);
  mat2.set(2, 1, 1.0f);
  mat2.set(2, 2, 1.0f);

  // Compute the difference
  matrix_difference(mat1, mat2, result);

  // Expected result
  float expected[3][3] = {
    {0.0f, 1.0f, 2.0f},
    {3.0f, 4.0f, 5.0f},
    {6.0f, 7.0f, 8.0f}
  };

  // Validate the output
  for (int i = 0; i < 3; ++i) {
    for (int j = 0; j < 3; ++j) {
      assert(result.get(i, j) == expected[i][j]);
    }
  }
  result.display();
  std::cout << "Matrix difference test passed!" << std::endl;
}

void reluAVX512(Matrix& A1, const Matrix& B1, Matrix& Z1) {
    // Ensure the result matrix Z1 is initialized to zero
    std::memset(Z1.data, 0, Z1.rows * Z1.cols * sizeof(float));

    const int unrollFactor = 4;     // Unroll the loop by a factor of 4
    const int simdWidth = 16;       // SIMD width for AVX-512

#pragma omp parallel for
    for (int i = 0; i < A1.rows; ++i) {
        for (int j = 0; j < A1.cols; j += unrollFactor) {
            __m512 z[unrollFactor];
            z[0] = _mm512_setzero_ps();  // Initialize to zero
            z[1] = _mm512_setzero_ps();  // Initialize to zero
            z[2] = _mm512_setzero_ps();  // Initialize to zero
            z[3] = _mm512_setzero_ps();  // Initialize to zero

            // Prefetch the first block of data
            _mm_prefetch(&A1.data[i * A1.cols + j], _MM_HINT_T0);
            _mm_prefetch(&B1.data[i], _MM_HINT_T0);

            // Perform full SIMD iterations
            for (int k = 0; k < simdWidth; ++k) {
                __m512 b = _mm512_set1_ps(B1.data[i]);
                __m512 a;

                a = _mm512_loadu_ps(&A1.data[i * A1.cols + j + k * unrollFactor]);
                z[0] = _mm512_add_ps(z[0], b);
                z[1] = _mm512_add_ps(z[1], b);
                z[2] = _mm512_add_ps(z[2], b);
                z[3] = _mm512_add_ps(z[3], b);

                // Perform the comparison and store the result
                __mmask16 mask = _mm512_cmp_ps_mask(z[0], _mm512_setzero_ps(), _CMP_LE_OQ);
                a = _mm512_mask_blend_ps(mask, _mm512_setzero_ps(), a);
                _mm512_storeu_ps(&A1.data[i * A1.cols + j + k * unrollFactor], a);
            }

            // Store the results with correct boundary handling
            for (int u = 0; u < unrollFactor; ++u) {
                if (j + u < A1.cols) {
                    float result[16];
                    _mm512_storeu_ps(result, z[u]);
                    for (int k = 0; k < simdWidth; ++k) {
                        Z1.data[i * A1.cols + (j + u) + k * unrollFactor] = result[k];
                    }
                }
            }
        }
    }
}

void sum_along_axis(const Matrix& mat, Matrix& result, int axis) {
  if (axis == 0) {
    // Row-wise sum
    assert(result.rows == mat.rows && result.cols == 1);

    // Initialize the result matrix to zero
    for (int i = 0; i < result.rows; ++i) {
      result.set(i, 0, 0.0f);
    }

    // Compute the row-wise sum using AVX-512
    for (int i = 0; i < mat.rows; ++i) {
      __m512 sum_vec = _mm512_setzero_ps();
      int j;
      for (j = 0; j + 15 < mat.cols; j += 16) {
        _mm_prefetch((const char*)&mat.data[i * mat.cols + j + 16], _MM_HINT_T0);
        __m512 v = _mm512_loadu_ps(&mat.data[i * mat.cols + j]);
        sum_vec = _mm512_add_ps(sum_vec, v);
      }
      float temp[16];
      _mm512_storeu_ps(temp, sum_vec);
      float row_sum = 0.0f;
      row_sum += temp[0] + temp[1] + temp[2] + temp[3] + temp[4] + temp[5] + temp[6] + temp[7] +
                temp[8] + temp[9] + temp[10] + temp[11] + temp[12] + temp[13] + temp[14] + temp[15];
      for (; j < mat.cols; ++j) {
        row_sum += mat.data[i * mat.cols + j];
      }
      result.set(i, 0, row_sum);
    }
  } else if (axis == 1) {
    // Column-wise sum
    assert(result.rows == 1 && result.cols == mat.cols);

    // Initialize the result matrix to zero
    for (int j = 0; j < result.cols; ++j) {
      result.set(0, j, 0.0f);
    }

    // Compute the column-wise sum using AVX-512
    for (int j = 0; j < mat.cols; ++j) {
      __m512 sum_vec = _mm512_setzero_ps();
      int i;
      for (i = 0; i + 15 < mat.rows; i += 16) {
        _mm_prefetch((const char*)&mat.data[(i + 16) * mat.cols + j], _MM_HINT_T0);
        __m512 v = _mm512_setr_ps(
            mat.data[i * mat.cols + j],
            mat.data[(i + 1) * mat.cols + j],
            mat.data[(i + 2) * mat.cols + j],
            mat.data[(i + 3) * mat.cols + j],
            mat.data[(i + 4) * mat.cols + j],
            mat.data[(i + 5) * mat.cols + j],
            mat.data[(i + 6) * mat.cols + j],
            mat.data[(i + 7) * mat.cols + j],
            mat.data[(i + 8) * mat.cols + j],
            mat.data[(i + 9) * mat.cols + j],
            mat.data[(i + 10) * mat.cols + j],
            mat.data[(i + 11) * mat.cols + j],
            mat.data[(i + 12) * mat.cols + j],
            mat.data[(i + 13) * mat.cols + j],
            mat.data[(i + 14) * mat.cols + j],
            mat.data[(i + 15) * mat.cols + j]
        );
        sum_vec = _mm512_add_ps(sum_vec, v);
      }
      float temp[16];
      _mm512_storeu_ps(temp, sum_vec);
      float col_sum = 0.0f;
      col_sum += temp[0] + temp[1] + temp[2] + temp[3] + temp[4] + temp[5] + temp[6] + temp[7] +
                temp[8] + temp[9] + temp[10] + temp[11] + temp[12] + temp[13] + temp[14] + temp[15];
      for (; i < mat.rows; ++i) {
        col_sum += mat.data[i * mat.cols + j];
      }
      result.set(0, j, col_sum);
    }
  } else {
    throw std::invalid_argument("Axis must be 0 (row-wise) or 1 (column-wise).");
  }
}

void multiplyMatrixByConstantAVX512(Matrix& A, float constant) {
    const int simdWidth = 16;       // SIMD width for AVX-512
    const int totalElements = A.rows * A.cols;
    const int unrollFactor = 4;
    const int stride = unrollFactor * simdWidth;
    const int totalIterations = totalElements / stride;
    const int remainingElements = totalElements % stride;
    const int start = totalElements - remainingElements;

  cout << totalElements << " " << totalIterations << " " << stride << endl;
#pragma omp parallel for
    for (int idx = 0; idx < totalIterations; idx++) {
    const int baseIdx = idx * stride;
        // Prefetch the next block of data
        _mm_prefetch(&A.data[baseIdx * stride], _MM_HINT_T0);

        // Perform full SIMD iterations
    __m512 a;
    __m512 c;
    __m512 result;
    a = _mm512_loadu_ps(&A.data[baseIdx + 0 * simdWidth]);
    c = _mm512_set1_ps(constant);
    result = _mm512_mul_ps(a, c);
            _mm512_storeu_ps(&A.data[baseIdx + 0 * simdWidth], result);


    a = _mm512_loadu_ps(&A.data[baseIdx + 1 * simdWidth]);
    c = _mm512_set1_ps(constant);
    result = _mm512_mul_ps(a, c);
            _mm512_storeu_ps(&A.data[baseIdx + 1 * simdWidth], result);
  
    a = _mm512_loadu_ps(&A.data[baseIdx + 2 * simdWidth]);
    c = _mm512_set1_ps(constant);
    result = _mm512_mul_ps(a, c);
            _mm512_storeu_ps(&A.data[baseIdx + 2 * simdWidth], result);
  
    a = _mm512_loadu_ps(&A.data[baseIdx + 3 * simdWidth]);
    c = _mm512_set1_ps(constant);
    result = _mm512_mul_ps(a, c);
            _mm512_storeu_ps(&A.data[baseIdx + 3 * simdWidth], result);
  }

    // Handle the remaining elements (if any)
    for (int idx = start; idx < totalElements; ++idx) {
        A.data[idx] *= constant;
    }
}





void test_sum_along_axis() {
  // Create and initialize matrices
  Matrix mat, result_row, result_col;
  mat.init<float>(3, 3);
  result_row.init<float>(3, 1);
  result_col.init<float>(1, 3);

  // Set values for mat
  mat.set(0, 0, 1.0f);
  mat.set(0, 1, 2.0f);
  mat.set(0, 2, 3.0f);
  mat.set(1, 0, 4.0f);
  mat.set(1, 1, 5.0f);
  mat.set(1, 2, 6.0f);
  mat.set(2, 0, 7.0f);
  mat.set(2, 1, 8.0f);
  mat.set(2, 2, 9.0f);

  // Compute the row-wise sum
  sum_along_axis(mat, result_row, 0);

  // Expected result for row-wise sum
  float expected_row[3] = {6.0f, 15.0f, 24.0f};

  // Validate the row-wise sum output
  for (int i = 0; i < 3; ++i) {
    assert(result_row.get(i, 0) == expected_row[i]);
  }

  // Compute the column-wise sum
  sum_along_axis(mat, result_col, 1);

  // Expected result for column-wise sum
  float expected_col[3] = {12.0f, 15.0f, 18.0f};

  // Validate the column-wise sum output
  for (int j = 0; j < 3; ++j) {
    assert(result_col.get(0, j) == expected_col[j]);
  }


  


  std::cout << "Row-wise and column-wise sum test passed!" << std::endl;
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
  A2.init(rows,classes, new float[classes * rows]);

  Matrix Dz1;
  Dz1.init(hidden, rows, new float[hidden * rows]);

  Matrix Dz2;
  Dz2.init<float>(rows, classes);

  Matrix Dw2;
  Dw2.init<float>(classes, hidden);

  Matrix Dw1;
  Dw1.init<float>(hidden, features);
  Matrix db2;
  db2.init<float>( 1, classes);
  float db1;
  float relu_leak = 0.0;

  Matrix one_hot_y;
  one_hot_y.init<float>(rows, classes);

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

  multiplyMatricesAVX512(W1, X_train, Z1);
  reluAVX512(A1, B1, Z1);
  multiplyMatricesAVX512(W2, A1, Z2);
  softmax(Z2, A2);
  matrix_difference(A2, one_hot_y,Dz2);
  sum_along_axis(Dz2, db2, 1);
  test_sum_along_axis();
  multiplyMatrixByConstantAVX512(A2,100);

  A2.display();
  return 0;
}
