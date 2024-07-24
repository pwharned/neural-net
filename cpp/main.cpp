#include <iostream>
#include <unordered_set>

class Value {
 private:
  double data;
  double grad;
  std::unordered_set<Value*> prev;

 public:
  Value(double initial_data) : data(initial_data), grad(0.0) {}

  void operator+=(double value) {
    data += value;
    prev.insert(this);
  }

  // Getter for data (equivalent to Python's property)
  double getData() const { return data; }

  // Getter for grad (equivalent to Python's property)
  double getGrad() const { return grad; }

  // Getter for prev (equivalent to Python's property)
  const std::unordered_set<Value*>& getPrev() const { return prev; }
};

int main() {
  Value a(1.0);
  std::cout << "Initial value: " << a.getData() << std::endl;

  a += 2.0;
  std::cout << "After adding 2: " << a.getData() << std::endl;

  a += 2.0;
  std::cout << "After adding 2 again: " << a.getData() << std::endl;

  // Display previous values
  std::cout << "Previous values: ";
  for (const auto& prev_value : a.getPrev()) {
    std::cout << prev_value->getData() << " ";
  }
  std::cout << std::endl;

  return 0;
}
