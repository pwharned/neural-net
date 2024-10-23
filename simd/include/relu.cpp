
#ifndef MY_HEADER_H
#define MY_HEADER_H

#include "Matrix.hpp"
#include "softmax.cpp"
#include "scalar.cpp"
#include "dot.cpp"
#endif // MY_HEADER_H



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


