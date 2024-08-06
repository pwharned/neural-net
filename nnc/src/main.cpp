#include <fstream>
#include <iostream>
#include <ostream>
#include <random>
#include <sstream>
using namespace std;

#define ROW 59999
#define COL 785
#define FEAT COL - 1
#define CLASSES 10
#define HIDDEN 10

double w1[HIDDEN][FEAT];

double (*x_train)[ROW] = new double[COL][ROW];
double w2[HIDDEN][CLASSES];
double b1[HIDDEN];
double b2[CLASSES];
double (*z1)[ROW] = new double[HIDDEN][ROW];
double (*z2)[ROW] = new double[CLASSES][ROW];
double (*a1)[ROW] = new double[HIDDEN][ROW];
double (*a2)[ROW] = new double[HIDDEN][ROW];
double (*dz1)[ROW] = new double[HIDDEN][ROW];
double (*dz2)[ROW] = new double[CLASSES][ROW];

double dw2[HIDDEN][CLASSES];
double db2[CLASSES];
double db1[HIDDEN];
double dw1[HIDDEN][FEAT];

int main() {
  std::ifstream file("data.csv");
  if (!file.is_open()) {
    std::cerr << "Error opening file data.csv" << endl;
  }
  std::string line;
  int row = 0;
  int col = 0;

  while (std::getline(file, line) && row < ROW) {
    std::istringstream iss(line);
    double value;
    while (iss >> value) {
      x_train[col][row] = static_cast<double>(value);
      col++;
    }
    col = 0;
    row++;
  }
  file.close();

  cout << "Read " << row << " rows" << endl;
  cout << x_train[0][0] << endl;

  // populate the weights;
  //
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_real_distribution<double> dis(0.0, 1.0);

  for (int i = 0; i < HIDDEN; i++) {
    for (int j = 0; j < FEAT; j++) {
      w1[i][j] = dis(gen);
    }
  }

  return 0;
}
