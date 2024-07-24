
#include <iostream>
#include <vector>

// Define a class for a node in the computation graph
class Node {
 public:
  // Constructor
  Node(double value) : value_(value) {}

  // Get the value of the node
  double value() const { return value_; }

  // Set the value of the node
  void set_value(double value) { value_ = value; }

  // Compute the gradient of the node with respect to a given input
  virtual double gradient(const Node* input) const = 0;

 private:
  double value_;
};

// Define a class for a constant node
class ConstantNode : public Node {
 public:
  ConstantNode(double value) : Node(value) {}

  // Compute the gradient of the node with respect to a given input
  double gradient(const Node* input) const override { return 0; }
};

// Define a class for a variable node
class VariableNode : public Node {
 public:
  VariableNode(double value) : Node(value) {}

  // Compute the gradient of the node with respect to a given input
  double gradient(const Node* input) const override { return 1; }
};

// Define a class for a sum node
class SumNode : public Node {
 public:
  SumNode(const std::vector<Node*>& inputs) : Node(0) {
    for (auto input : inputs) {
      value_ += input->value();
    }
  }

  // Compute the gradient of the node with respect to a given input
  double gradient(const Node* input) const override { return 1; }
};

// Define a class for a differentiable function
class DifferentiableFunction {
 public:
  // Constructor
  DifferentiableFunction(const std::vector<Node*>& inputs, Node* output)
      : inputs_(inputs), output_(output) {}

  // Compute the output of the function
  double output() const { return output_->value(); }

  // Compute the gradient of the function with respect to a given input
  std::vector<double> gradient(const std::vector<Node*>& inputs) const {
    std::vector<double> gradients;
    for (auto input : inputs) {
      gradients.push_back(input->gradient(output_));
    }
    return gradients;
  }

 private:
  std::vector<Node*> inputs_;
  Node* output_;
};

int main() {
  // Create a vector of inputs
  std::vector<Node*> inputs;
  inputs.push_back(new ConstantNode(1));
  inputs.push_back(new VariableNode(2));
  inputs.push_back(new ConstantNode(3));

  // Create a sum node
  SumNode sum(inputs);

  // Create a differentiable function
  DifferentiableFunction function(inputs, &sum);

  // Compute the output of the function
  std::cout << "Output: " << function.output() << std::endl;

  // Compute the gradient of the function with respect to the inputs
  std::vector<double> gradients = function.gradient(inputs);
  for (auto gradient : gradients) {
    std::cout << "Gradient: " << gradient << std::endl;
  }

  return 0;
}
