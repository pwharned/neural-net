#include "../include/Matrix.cpp"
#include <iostream>
#include <cstring>
#include <immintrin.h>  // Header for AVX intrinsics
#include <omp.h>
#include <assert.h>
#include <fstream>
#include <sstream>
using namespace std;


void readCSV(const std::string& filename, int*& groundTruth, double*& features, int numRows, int numCols) {

    // Dynamically allocate memory for ground truth and features
  //
    int zeroes = 8 - ((numCols-1)%8); //calculate the number of padding zeroes
    groundTruth = new int[numRows];
    features = new double[numRows * (numCols + zeroes) ];

    // Open the CSV file
    std::ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error opening file" << std::endl;
        delete[] groundTruth;
        delete[] features;
        groundTruth = nullptr;
        features = nullptr;
        return;
    }

    std::string line;
    int row = 0;

    // Read the file line by line
    while (std::getline(file, line) && row < numRows) {
        std::stringstream ss(line);
        std::string value;

        // Read the ground truth
        std::getline(ss, value, ',');
        groundTruth[row] = std::stoi(value);

        // Read the features
        for (int col = 0; col < numCols + zeroes; ++col) {
            if (col > numCols){
        features[col * numRows +row] = 0.0;
      }else{
            std::getline(ss, value, ',');
            features[col * numRows + row] = std::stof(value);
      }  
      }

        ++row;
    }

    file.close();
}

void one_hot_encode(int*& source, double*& target, int length, int numRows){
for(int i=0;i<numRows;i++){
    for(int j=0;j<length;j++){
      if(j==source[i]){
        target[i*j] = 1;
      }else{
        target[i*j]=0;
      }
    }
  }
  
}

void initializeWeights(double *&weights, int length){
  for(int i=0;i<length;i++){
    weights[i] = 0.1;
  }

}

int main() {
 // C.print();

    const int numRows = 60000;
    const int numCols = 785;
    const int numFeatures = numCols-1;
    const int numClasses = 10;

    int* groundTruth = nullptr;
    double* groundTruthOneHot = new double[numClasses*numRows];
    double* features = nullptr;
    double *w1 = new double[numClasses*numFeatures];
    double *z1 = new double[numClasses*numFeatures];
    initializeWeights(w1,numClasses*numFeatures);

    // Call the function to read the CSV file
    readCSV("../data.csv", groundTruth, features, numRows, numCols);

    one_hot_encode(groundTruth,groundTruthOneHot,numClasses, numRows );

    dot(1,1,1,w1,numClasses,features,numFeatures,z1,numFeatures); 
    display(z1, numClasses, numFeatures,10);


  return 0;
}







