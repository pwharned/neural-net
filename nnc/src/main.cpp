#include <fstream>
#include <iostream>
#include <ostream>
#include <sstream>
using namespace std;

#define ROW 59999
#define COL 785
#define FEAT COL - 1
#define CLASSES 10
#define HIDDEN 10

typedef double train[COL][ROW];
typedef double l1[HIDDEN][ROW];
typedef double l2[HIDDEN][CLASSES];
typedef double beta1[HIDDEN];
typedef double beta2[CLASSES];
typedef double zeta1[HIDDEN][ROW];
typedef double zeta2[CLASSES][ROW];

train *x_train = new train[1];
l1 *w1[1];
l2 *w2[1];
beta1 *b1[1];
beta2 *b2[1];
zeta1 *z1 = new zeta1[1];
zeta2 *z2 = new zeta2[1];
zeta1 *a1 = new zeta1[1];
zeta2 *a2 = new zeta2[1];

zeta2 *dz2 = new zeta2[1];
l2 *dw2[1];
beta2 *db2[1];
beta1 *db1[1];
zeta1 *dz1 = new zeta1[1];
l1 *dw1;

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
      x_train[0][col][row] = static_cast<double>(value);
      col++;
    }
    col = 0;
    row++;
  }
  file.close();

  cout << "Read " << row << " rows" << endl;
  cout << x_train[0][0][row] << endl;
  return 0;
}
