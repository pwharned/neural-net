
#ifndef MY_HEADER_H
#define MY_HEADER_H

#include "Matrix.hpp"

#endif 
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



