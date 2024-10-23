
#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>

#include <cmath>
#include <cstring>
#include <iostream>
#include <assert.h>


using namespace std;



typedef struct  Matrix {
  int rows;
  int cols;
  float* data;

  // Constructor-like function
void init(int r, int c, float* values) {
  rows = r;
  cols = c;
  data = static_cast<float*>(_mm_malloc(r * c * sizeof(float), 64));

  if (data == nullptr) {
    throw std::bad_alloc();
  }

  // Copy inlined data to aligned memory
  for (int i = 0; i < r * c; ++i) {
    data[i] = values[i];
  }
}
  void init(int r, int c) {
    rows = r;
    cols = c;
    data = static_cast<float*>(_mm_malloc(r * c * sizeof(float), 64));

    
    if (data == nullptr) {
      throw std::bad_alloc();
    }
   // std::memset(data, 0, r * c * sizeof(T)); // Initialize to zero
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

  // Destructor to free aligned memory
  //

    ~Matrix() {
        _mm_free(data);
    }


    void pad(int tile_size) {
        int padded_rows = ((rows + tile_size - 1) / tile_size) * tile_size;
        int padded_cols = ((cols + tile_size - 1) / tile_size) * tile_size;
        float* padded_data = static_cast<float*>(_mm_malloc(padded_rows * padded_cols * sizeof(float), 64));
        std::memset(padded_data, 0, padded_rows * padded_cols * sizeof(float)); // Initialize with zeros

        for (int i = 0; i < rows; ++i) {
            for (int j = 0; j < cols; ++j) {
                padded_data[i * padded_cols + j] = data[i * cols + j];
            }
        }

        _mm_free(data); // Free the old data
        data = padded_data;
        rows = padded_rows;
        cols = padded_cols;
    }

} Matrix;


