
#include "../include/Matrix.cpp"
#include <iostream>
#include <cstring>
#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>
#include <assert.h>
using namespace std;



int main() {
 // C.print();
  int size = 65536;
  double *a = (double*)malloc(size * sizeof(double));
  double *b = (double*)malloc(size * sizeof(double));
  double *c = (double*)malloc(size * sizeof(double));

  for(int i =0;i<size;i++){
    a[i] =1.0;
    b[i]=i;
    c[i]=0;

  }

  MY_MMult(256,256,256,a,256,b,256,c,256);
  display(a, 256,256);
  display(b, 256,256);
  display(c,256,256);
  return 0;
}







