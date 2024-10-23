
#ifndef MY_HEADER_H
#define MY_HEADER_H


#include "Matrix.hpp"
#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>

#include <cmath>
#include <cstring>
#include <assert.h>

#endif



const int L1_BLOCK_SIZE = 32; // Block size for L1 cache
const int L2_BLOCK_SIZE = 64; // Block size for L2 cache
const int L3_BLOCK_SIZE = 512; // Block size for L3 cache

void pad_matrix_in_place(Matrix& A, int tile_size) {
    int old_rows = A.rows;
    int old_cols = A.cols;

    int new_rows = (old_rows + tile_size - 1) / tile_size * tile_size;
    int new_cols = (old_cols + tile_size - 1) / tile_size * tile_size;

    A.rows = new_rows;
    A.cols = new_cols;

    for (int i = 0; i < new_rows; ++i) {
        for (int j = 0; j < new_cols; ++j) {
            if (i < old_rows && j < old_cols) {
                A.data[i * new_cols + j] = A.data[i * old_cols + j];
            } else {
                A.data[i * new_cols + j] = 0.0f;
            }
        }
    }
}

 // For AVX-512 intrinsics

void dotProduct(const Matrix& A, const Matrix& B, Matrix& C, int tile_size) {
    if (A.cols != B.rows) {
        throw std::invalid_argument("Incompatible dimensions for matrix multiplication");
    }

    int result_rows = A.rows;
    int result_cols = B.cols;

    // Initialize the result matrix to zero

    // Perform tiled matrix multiplication
    #pragma omp parallel for
    for (int i = 0; i < result_rows; i += tile_size) {
    #pragma omp parallel for
        for (int j = 0; j < result_cols; j += tile_size) {
            for (int k = 0; k < A.cols; k += tile_size) {
                for (int ii = i; ii < i + tile_size && ii < result_rows; ++ii) {
                    for (int jj = j; jj < j + tile_size && jj < result_cols; ++jj) {
                        __m512 sum = _mm512_setzero_ps();
                        for (int kk = k; kk < k + tile_size && kk < A.cols; kk += 16) {
               _mm_prefetch((const char*)&A.data[ii * A.cols + kk + 16], _MM_HINT_T0);
                                _mm_prefetch((const char*)&B.data[(kk + 16) * B.cols + jj], _MM_HINT_T0);
                            __m512 a = _mm512_load_ps(&A.data[ii * A.cols + kk]);
                            __m512 b = _mm512_load_ps(&B.data[kk * B.cols + jj]);
                            sum = _mm512_fmadd_ps(a, b, sum);
                        }
                        float temp[16];
                        _mm512_store_ps(temp, sum);
                        for (int t = 0; t < 16; ++t) {
                            C.data[ii * result_cols + jj] += temp[t];
                        }
                    }
                }
            }
        }
    }
}


void dotProduct2(const Matrix& A, const Matrix& B, Matrix& C, int tile_size) {
    if (A.cols != B.rows) {
        throw std::invalid_argument("Incompatible dimensions for matrix multiplication");
    }

    int result_rows = A.rows;
    int result_cols = B.cols;

    // Initialize the result matrix to zero

    // Perform tiled matrix multiplication
    #pragma omp parallel for
    for (int i = 0; i < result_rows; i += tile_size) {
        for (int j = 0; j < result_cols; j += tile_size) {
            for (int k = 0; k < A.cols; k += tile_size) {
                for (int ii = i; ii < i + tile_size && ii < result_rows; ++ii) {
                    for (int jj = j; jj < j + tile_size && jj < result_cols; ++jj) {
                        float sum = 0.0f;
                        for (int kk = k; kk < k + tile_size && kk < A.cols; ++kk) {
                            sum += A.data[ii * A.cols + kk] * B.data[kk * B.cols + jj];
                        }
                        C.data[ii * result_cols + jj] += sum;
                    }
                }
            }
        }
    }
}


void tiled_matrix_multiply1(const Matrix& A, const Matrix& B, Matrix& C, int tile_size) {
    if (A.cols != B.rows) {
        throw std::invalid_argument("Incompatible matrix dimensions");
    }

    int num_tiles_A_rows = static_cast<int>(std::ceil(static_cast<float>(A.rows) / tile_size));
    int num_tiles_B_cols = static_cast<int>(std::ceil(static_cast<float>(B.cols) / tile_size));
    int num_tiles_common = static_cast<int>(std::ceil(static_cast<float>(A.cols) / tile_size));

    for (int i = 0; i < num_tiles_A_rows; ++i) {
        for (int j = 0; j < num_tiles_B_cols; ++j) {
            for (int k = 0; k < tile_size; ++k) {
                for (int l = 0; l < tile_size; ++l) {
                    int row_A = i * tile_size + k;
                    int col_A = l;
                    int row_B = l;
                    int col_B = j * tile_size + k;

                    if (row_A < A.rows && col_A < A.cols && row_B < B.rows && col_B < B.cols) {
                        int idx_A = row_A * A.cols + col_A;
                        int idx_B = row_B * B.cols + col_B;
                        int idx_C = (i * tile_size + k) * C.cols + (j * tile_size + l);

                        C.data[idx_C] += A.data[idx_A] * B.data[idx_B];
                    }
                }
            }
        }
    }
}

void tiled_matrix_multiply(const Matrix& A, const Matrix& B, Matrix& C, int tile_size) {
    if (A.cols != B.rows) {
        throw std::invalid_argument("Incompatible matrix dimensions");
    }

    int num_tiles_A_rows = static_cast<int>(std::ceil(static_cast<float>(A.rows) / tile_size));
    int num_tiles_B_cols = static_cast<int>(std::ceil(static_cast<float>(B.cols) / tile_size));
    int num_tiles_common = static_cast<int>(std::ceil(static_cast<float>(A.cols) / tile_size));

    for (int i = 0; i < num_tiles_A_rows; ++i) {
        for (int j = 0; j < num_tiles_B_cols; ++j) {
            for (int k = 0; k < num_tiles_common; ++k) {
                int start_row_A = i * tile_size;
                int end_row_A = std::min(start_row_A + tile_size, A.rows);
                int start_col_B = j * tile_size;
                int end_col_B = std::min(start_col_B + tile_size, B.cols);
                int start_col_A = k * tile_size;
                int end_col_A = std::min(start_col_A + tile_size, A.cols);

                for (int ii = start_row_A; ii < end_row_A; ++ii) {
                    for (int jj = start_col_B; jj < end_col_B; ++jj) {
                        int idx_C = ii * C.cols + jj;
                        C.data[idx_C] = 0; // Initialize C element to 0
                        for (int kk = start_col_A; kk < end_col_A; ++kk) {
                            int idx_A = ii * A.cols + kk;
                            int idx_B = kk * B.cols + jj;
                            C.data[idx_C] += A.data[idx_A] * B.data[idx_B];
                        }
                    }
                }
            }
        }
    }
}



// naive. data is row oriented. 
void dot(Matrix& A, Matrix &B, Matrix& C){
  for (int i = 0; i < A.rows; i++) {


        for (int j = 0; j < B.cols; j++) {

 
            for (int k = 0; k < A.cols; k++) {

                C.data[i * B.cols + j ] += A.data[ i* A.cols +k  ] * B.data[ k * B.cols +j ];
            }
 
        }
 
    }

} 


void matmul(Matrix& A, Matrix& B, Matrix& C) {
  // Check if matrices can be multiplied
  if (A.cols != B.rows) {
    throw std::invalid_argument("Matrix dimensions are incompatible for multiplication");
  }

  // Check if result matrix has correct dimensions
  if (C.rows != A.rows || C.cols != B.cols) {
    throw std::invalid_argument("Result matrix has incorrect dimensions");
  }

  const uint8_t simdWith = 16; // the number of float 8s which can fit in the register.
  const uint8_t totalIterations = A.cols / simdWith;
  const uint8_t remainingIterations = A.cols % simdWith;
  
 #pragma omp parallel for

for (int i = 0; i < A.rows; ++i) {
    for (int j = 0; j < B.cols; ++j) {

        __m512 sum = _mm512_setzero_ps();
      _mm_prefetch(&A.data[i * A.cols], _MM_HINT_T0);
      _mm_prefetch(&B.data[j], _MM_HINT_T0);

        for (int k = 0; k < totalIterations; k++) {

            __m512 A_vec = _mm512_set1_ps(A.data[i * A.cols + k * simdWith]);
            __m512 B_vec = _mm512_loadu_ps(&B.data[k * simdWith * B.cols + j]);
            sum = _mm512_fmadd_ps(A_vec, B_vec, sum);
        }
        _mm512_storeu_ps(&C.data[i * C.cols + j], sum);

      float temp = 0.0f;
        for(int k = A.cols-remainingIterations; k< A.cols; k++){
            temp += A.data[i * A.cols + k] * B.data[k * B.cols + j];
        }
        C.data[i * C.cols + j] += temp;

        }
    }
}

void matmul2(Matrix& A, Matrix& B, Matrix& C) {
  // Check if matrices can be multiplied
  if (A.cols != B.rows) {
    throw std::invalid_argument("Matrix dimensions are incompatible for multiplication");
  }

  // Check if result matrix has correct dimensions
  if (C.rows != A.rows || C.cols != B.cols) {
    throw std::invalid_argument("Result matrix has incorrect dimensions");
  }

  const uint8_t simdWidth = 16; // the number of float 8s which can fit in the register.
  const uint8_t totalIterations = A.cols / simdWidth;
  const uint8_t remainingIterations = A.cols % simdWidth;
  
  // Cache blocking
  const int blockSize = 16;
  const int numBlocks = (A.rows + blockSize - 1) / blockSize;

  #pragma omp parallel for
  for (int blockI = 0; blockI < numBlocks; ++blockI) {
    for (int blockJ = 0; blockJ < numBlocks; ++blockJ) {
      for (int i = blockI * blockSize; i < std::min((blockI + 1) * blockSize, A.rows); i += simdWidth) {
        for (int j = blockJ * blockSize; j < std::min((blockJ + 1) * blockSize, B.cols); j += simdWidth) {
          __m512 sum[simdWidth];
          for (int k = 0; k < simdWidth; ++k) {
            sum[k] = _mm512_setzero_ps();
          }

          // Prefetch A and B
          _mm_prefetch(&A.data[i * A.cols], _MM_HINT_T0);
          _mm_prefetch(&B.data[j], _MM_HINT_T0);

          for (int k = 0; k < totalIterations; k++) {
            __m512 A_vec = _mm512_loadu_ps(&A.data[i * A.cols + k * simdWidth]);
            __m512 B_vec = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + j]);

            // Prefetch next iteration of A and B
            _mm_prefetch(&A.data[i * A.cols + (k + 1) * simdWidth], _MM_HINT_T0);
            _mm_prefetch(&B.data[(k + 1) * simdWidth * B.cols + j], _MM_HINT_T0);

            for (int l = 0; l < simdWidth; ++l) {
              __m512 A_vec_l = _mm512_set1_ps(A_vec[l]);
              __m512 B_vec_l = _mm512_set1_ps(B_vec[l]);
              for (int m = 0; m < simdWidth; ++m) {
                sum[m] = _mm512_fmadd_ps(A_vec_l, B_vec_l, sum[m]);
              }
            }
          }

          // Store the result of the SIMD multiplication in a temporary array
          float tempArray[simdWidth][simdWidth];
          for (int k = 0; k < simdWidth; ++k) {
            _mm512_storeu_ps(tempArray[k], sum[k]);
          }

          // Add the elements of the temporary array to the result
          for (int k = 0; k < simdWidth; ++k) {
            for (int l = 0; l < simdWidth; ++l) {
              if (i + k < A.rows && j + l < B.cols) {
                C.data[(i + k) * C.cols + j + l] += tempArray[k][l];
              }
            }
          }
        }
      }
    }
  }

  // Add the remaining elements to the result
  for (int i = 0; i < A.rows; ++i) {
    for (int j = 0; j < B.cols; ++j) {
      for (int k = A.cols-remainingIterations; k < A.cols; ++k) {
        C.data[i * C.cols + j] += A.data[i * A.cols + k] * B.data[k * B.cols + j];
      }
    }
  }
}


void matmul3(Matrix& A, Matrix& B, Matrix& C) {
  // Check if matrices can be multiplied
  if (A.cols != B.rows) {
    throw std::invalid_argument("Matrix dimensions are incompatible for multiplication");
  }

  // Check if result matrix has correct dimensions
  if (C.rows != A.rows || C.cols != B.cols) {
    throw std::invalid_argument("Result matrix has incorrect dimensions");
  }

  const uint8_t simdWidth = 16; // the number of float 8s which can fit in the register.
  const uint8_t totalIterations = A.cols / simdWidth;
  const uint8_t remainingIterations = A.cols % simdWidth;
  
  // Cache blocking
  const int blockSize = 16;
  const int numBlocks = (A.rows + blockSize - 1) / blockSize;

  #pragma omp parallel for
  for (int blockI = 0; blockI < numBlocks; ++blockI) {
    for (int blockJ = 0; blockJ < numBlocks; ++blockJ) {
      for (int i = blockI * blockSize; i < std::min((blockI + 1) * blockSize, A.rows); i += simdWidth) {
        for (int j = blockJ * blockSize; j < std::min((blockJ + 1) * blockSize, B.cols); j += simdWidth) {
          __m512 sum[simdWidth];
          for (int k = 0; k < simdWidth; ++k) {
            sum[k] = _mm512_setzero_ps();
          }

          // Prefetch A and B
          _mm_prefetch(&A.data[i * A.cols], _MM_HINT_T0);
          _mm_prefetch(&B.data[j], _MM_HINT_T0);

          for (int k = 0; k < totalIterations; k++) {
            __m512 A_vec = _mm512_loadu_ps(&A.data[i * A.cols + k * simdWidth]);
            __m512 B_vec = _mm512_loadu_ps(&B.data[k * simdWidth * B.cols + j]);

            // Prefetch next iteration of A and B
            _mm_prefetch(&A.data[i * A.cols + (k + 1) * simdWidth], _MM_HINT_T0);
            _mm_prefetch(&B.data[(k + 1) * simdWidth * B.cols + j], _MM_HINT_T0);

            for (int l = 0; l < simdWidth; ++l) {
              __m512 A_vec_l = _mm512_set1_ps(A_vec[l]);
              __m512 B_vec_l = _mm512_set1_ps(B_vec[l]);
              for (int m = 0; m < simdWidth; ++m) {
                sum[m] = _mm512_fmadd_ps(A_vec_l, B_vec_l, sum[m]);
              }
            }
          }
for (int k = 0; k < simdWidth; ++k) {
  if (i + k < C.rows) {
    __m512 C_vec = _mm512_loadu_ps(&C.data[(i + k) * C.cols + j]);
    __mmask16 mask = (j + simdWidth > C.cols) ? 0 : (1 << simdWidth) - 1;
    C_vec = _mm512_mask_add_ps(C_vec, mask, sum[k], C_vec);
    _mm512_storeu_ps(&C.data[(i + k) * C.cols + j], C_vec);
  }
}
        }
      }
    }
  }

  // Add the remaining elements to the result
  for (int i = 0; i < A.rows; ++i) {
    for (int j = 0; j < B.cols; ++j) {
      for (int k = A.cols-remainingIterations; k < A.cols; ++k) {
        if (i < C.rows && j < C.cols) {
          C.data[i * C.cols + j] += A.data[i * A.cols + k] * B.data[k * B.cols + j];
        }
      }
    }
  }
}

void multiplyMatricesAVX512(const Matrix& A, const Matrix& B, Matrix& C) {
    if (A.cols != B.rows) {
        throw std::invalid_argument("Matrix dimensions do not match for multiplication.");
    }

    const int prefetchOffset = 16;  // Prefetch 16 elements ahead
    const int unrollFactor = 4;     // Unroll the loop by a factor of 4
    const int simdWidth = 16;       // SIMD width for AVX-512
            int kFullIterations = A.cols / simdWidth;
int kRemaining = A.cols % simdWidth;

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

      int index;
      int index2;
            // Perform full SIMD iterations
            for (int k = 0; k < kFullIterations; ++k) {
                // Prefetch the next block of data
        //
        //
        // We have total number of elements / simdWidth
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






