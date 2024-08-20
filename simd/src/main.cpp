#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>

#include <chrono>
#include <cstring>
#include <iostream>
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

int main() {
  // Example usage

  const int rowsA = 70000;
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
