#ifndef MY_HEADER_H
#define MY_HEADER_H
#include <chrono>
#include <iostream>
#include <string>
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

// Macro to capture the function name and call benchmark
#define BENCHMARK(func, ...) benchmark(#func, func, ##__VA_ARGS__)

int main() {

  const long rowsA = 6000;
  const long colsA = 784;

  float *arrA = new float[rowsA*colsA];
  float *arrB = new float[rowsA*colsA];
  for (long i=0;i<(rowsA*colsA); i++){
    arrA[i] = 1.0;
    arrB[i] = 1.0;
  }


  return 0;

}
