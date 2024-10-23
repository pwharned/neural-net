#ifndef MY_HEADER_H
#define MY_HEADER_H

#include "Matrix.hpp"
#include "softmax.cpp"

#endif // MY_HEADER_H





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



