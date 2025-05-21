#ifndef MY_HEADER_H
#define MY_HEADER_H
#include <chrono>
#include <iostream>
#include <string>
#include "../include/Matrix.cpp"
#endif // MY_HEADER_H


// Helper function to extract the function name from the full signature
std::string getFunctionName(const std::string& fullSignature) {
    size_t start = fullSignature.find(" ") + 1;
    size_t end = fullSignature.find("(", start);
    return fullSignature.substr(start, end - start);
}

// Function to benchmark the performance of another function with parameters
template <typename Func, typename... Args>
void benchmark(const std::string& funcName, Func func, Args&&... args) {
    std::cout << "Benchmarking function: " << funcName << std::endl;
    for (int i = 0; i < 4; ++i) {
        auto start = std::chrono::high_resolution_clock::now();
        func(std::forward<Args>(args)...);
        auto end = std::chrono::high_resolution_clock::now();

        std::chrono::duration<double, std::milli> duration = end - start;

        std::cout << "Run " << i + 1 << ": " << duration.count() << " milliseconds" << std::endl;
    }


    std::cout << std::endl;
}

int testDot() {
    int rows = 15;
    int cols = 15;
    int size = rows*cols;
    constexpr int blocksize =64;
  double *a = (double*)malloc(size * sizeof(double));
  double *b = (double*)malloc(size * sizeof(double));
  double *c = (double*)malloc(size * sizeof(double));
  for(int i =0;i<size;i++){
    a[i] =i;
    b[i]=i;
    c[i]=0;

  }
  //MY_MMult(256,256,256,a,256,b,256,c,256);
  static double *a_to = (double*)aligned_alloc(64, blocksize * sizeof(double));  // Align to 64 bytes
  static double *b_to = (double*)aligned_alloc(64, blocksize * sizeof(double));  // Align to 64 bytes
  static double *c_to = (double*)aligned_alloc(64, blocksize * sizeof(double));  // Align to 64 bytes

  int lda = 15;
  int ldb = 15;
  display(a,15,15,15);
  for(int i =0;i < rows; i+=8){
    for(int j=0;j<cols;j+=8){

      double *a_ij_pntr = &A(i, j); //declare the pointer
     uint32_t block_rows = std::min(8, rows-i); // Remaining rows to process
      uint32_t block_cols = std::min(8, cols-j); 

      cout<< block_cols << endl;
      for(int jj=0;jj<rows;jj+=8){
      uint32_t block_cols_b = std::min(8, cols-jj); 

        double *b_ij_pntr = &B(i, jj); //declare the pointer
        //
        cout << *b_ij_pntr << endl;
      for(int k =0;k<block_rows;k++){
      for(int ii =0;ii<block_cols;ii++){

           // cout <<"block_cols_b="<< block_cols_b << " i=" <<i <<" j=" << j << " jj=" <<jj<<" k="<<k<<" ii="<<ii<<endl; 

            if(jj==0){
      *(a_to+(8*ii)+k) = *(a_ij_pntr+(lda*ii)+k);
            }

            if(ii<block_cols_b){

       *(b_to+(8*ii)+k) = *(b_ij_pntr+(lda*ii)+k);
            }
            }
      }
        cout << "A" << endl;
          display(a_to, block_rows, block_cols, 8);
    cout<< "B" << endl;

      display(b_to,block_rows,block_cols_b,8);

        cout << endl;
      }
    }
  }

//  kernelMxN(8,8,8,a_to,b_to,c_to,8);

  return 0;

}



void AddDotMxN(int k, double *a, int m, double *b, int n, double *c, int ldc);

void test_AddDotMxN() {
  int k = 16;
  int m = 8;
  int n = 8;
  double *a = (double *)aligned_alloc(64, m * k * sizeof(double));
  double *b = (double *)aligned_alloc(64, k * n * sizeof(double));
  double *c = (double *)aligned_alloc(64, m * n * sizeof(double));
  double *c_ref = (double *)aligned_alloc(64, m * n * sizeof(double));

  // Initialize matrices
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < k; j++) {
      a[i * k + j] = 1; //(double)rand() / RAND_MAX;
      cout << 1 << '|' ;
    }
    cout << endl;
  }


  for (int i = 0; i < k; i++) {
    for (int j = 0; j < n; j++) {
      b[i * n + j] = j;//  (double)rand() / RAND_MAX;
    cout << j << '|';

    }
    cout << endl;
  }

  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      c[i * n + j] = 0;//(double)rand() / RAND_MAX;
      c_ref[i * n + j] = 0;
    }
  }

  // Pack matrices
  double packedA[m * k];
  double packedB[k * n];
  PackMatrixA(k, a, k, packedA, m);
  PackMatrixB(k, b, n, packedB, n);

  // Compute reference result
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      for (int p = 0; p < k; p++) {
        c_ref[i * n + j] += a[i * k + p] * b[p * n + j];
      }
    }
  }

  // Call AddDotMxN
  AddDotMxN(k,a, m,b , n, c, n);

  // Compare results
  double max_diff = 0.0;
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      double diff = fabs(c[i * n + j] - c_ref[i * n + j]);
      cout << c[i*n +j] << '|';
      if (diff > max_diff) {
        max_diff = diff;
      }
    }

      cout << endl;
  }

  printf("Max difference: %e\n", max_diff);

  free(a);
  free(b);
  free(c);
  free(c_ref);
}


// Macro to capture the function name and call benchmark
#define BENCHMARK(func, ...) benchmark(#func, func, ##__VA_ARGS__)


int main() {
  testDot();
  return 0;

}
