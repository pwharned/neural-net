
#ifndef MY_HEADER_H
#define MY_HEADER_H

#include "../include/Matrix.hpp"
#include "../include/softmax.cpp"
#include "../include/scalar.cpp"
#include <chrono>
#include "../include/dot.cpp"
#endif // MY_HEADER_H


bool compareMatrices(const Matrix& matrix1, const Matrix& matrix2, const string& functionName, float tolerance = 1e-6) {
    // Check if the matrices have the same dimensions
  bool equal;
    if (matrix1.rows != matrix2.rows || matrix1.cols != matrix2.cols) {
        equal = false;

        return equal;
    }



    // Iterate through each element of the matrices
    for (size_t i = 0; i < matrix1.cols * matrix1.rows; ++i) {
        if (std::abs(matrix1.data[i] - matrix2.data[i]) > tolerance) {
      cout << "Function " << functionName << " produced an incorrect result" << endl;;
          return false;
        }
    }

  cout << "Function " << functionName << " produced a correct result" << endl;

    return true;
}

void test_matrix_difference() {
  // Create and initialize matrices
  Matrix mat1, mat2, result;
  mat1.init(3, 3);
  mat2.init(3, 3);
  result.init(3, 3);

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

// Macro to capture the function name and call benchmark
#define BENCHMARK(func, ...) benchmark(#func, func, ##__VA_ARGS__)


int testMatrix() {
  // Example usage

  const int rowsA = 60000;
  const int colsA = 784;
  const int colsB = 10;

  Matrix A;
  A.init(rowsA, colsA);
  for (int i = 0; i < rowsA * colsA; ++i) {
    A.data[i] = 1.0f;
  }

  Matrix B;
  B.init(colsA, colsB);
  for (int i = 0; i < colsA * colsB; ++i) {
    B.data[i] = 2.0f;
  }

  Matrix C;
  C.init(rowsA, colsB);

  Matrix D;
  D.init(rowsA, colsB);

  dot(A, B, D);

  matmul2(A, B, C);
  compareMatrices(C, D, "matmul2");
  
  C.init(rowsA, colsB);
  

  multiplyMatricesAVX512(A,B,C);
  compareMatrices(C, D, "multiplyMatricesAVX512");
  
  C.init(rowsA, colsB);
  
  tiled_matrix_multiply(A,B,C, 16);
  compareMatrices(C, D, "tiled_matrix_multiply");

  
C.init(rowsA, colsB);
  
  dotProduct(A,B,C, 16);
  compareMatrices(C, D, "dotProduct");

  

  
  benchmark("dot", dot, A,B,C);
  benchmark("multiplyMatricesAVX512",  multiplyMatricesAVX512, A, B, C);
  benchmark("matmul2", matmul2, A, B, C);
  benchmark("tiled_matrix_multiply", tiled_matrix_multiply, A,B,C, 64);
  benchmark("dotProduct", dotProduct, A,B,C, 16);

  



  return 0;
}


void verifyMatrixMultiplication () {
  float d[6] = {1.0f, 2.0f,3.0f,4.0f, 5.0f, 6.0f};
  float d2[6] = {1.0f, 3.0f, 5.0f,2.0f,4.0f,6.0f};
 
  Matrix A;
  A.init(3,2,d);

  Matrix B;

  B.init(2,3, d2);
  Matrix C;
  C.init(3,3);

multiplyMatricesAVX512(A,B,C);
  C.display();

  Matrix D;
  D.init(3,3);
  matmul2(A, B, D);

  D.display();
}

void verifyDot () {
  float d[6] = {1.0f, 2.0f,3.0f,4.0f, 5.0f, 6.0f};
  float d2[6] = {1.0f, 3.0f, 5.0f,2.0f,4.0f,6.0f};
 
  Matrix A;
  A.init(3,2,d);

  Matrix B;

  B.init(2,3, d2);
  Matrix C;
  C.init(3,3);

dot(A,B,C);
C.display();
}



void test_softmax() {
  Matrix mat;
  mat.init(3, 3);
  Matrix out;
  out.init(3,3);
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

void test_sum_along_axis() {
  // Create and initialize matrices
  Matrix mat, result_row, result_col;
  mat.init(3, 3);
  result_row.init(3, 1);
  result_col.init(1, 3);

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

  //test_sum_along_axis();
  //test_softmax();
  //verifyMatrixMultiplication();
  //testMatrix();
  //test_matrix_difference();
 
verifyDot();
  testMatrix();
  return 0;

}
