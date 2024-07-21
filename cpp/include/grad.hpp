#include <math.h>

#include <cmath>
#include <functional>
#include <iostream>
#include <vector>
using namespace std;
#ifndef VALUE
#define VALUE

template <typename T>
class Value {
 public:
  constexpr Value(T value)
      : val{value}, operation(0), lprev(nullptr), rprev(nullptr), gradient(0) {}
  constexpr Value(T value, char o)
      : val{value}, operation(o), lprev(nullptr), rprev(nullptr), gradient(0) {}
  constexpr Value(T value, char o, const Value<T>& l, const Value<T>& r)
      : val(value), operation(o), lprev(&l), rprev(&r), gradient(0) {}
  constexpr Value(T value, char o, const Value<T>& l)
      : val(value), operation(o), lprev(&l), rprev(nullptr), gradient(0) {}

  friend auto operator+(const Value& lhs, const Value& rhs) -> Value {
    auto v = Value(lhs.val + rhs.val, '+', lhs, rhs);

    auto back = [&lhs, &rhs, &v]() {
      lhs.gradient += v.gradient;
      rhs.gradient += v.gradient;
    };

    v.setBackward(back);
    return v;
  }

  friend auto operator*(const Value& lhs, const Value& rhs) -> Value {
    auto v = Value(lhs.val * rhs.val, '*', lhs, rhs);

    auto back = [&lhs, &rhs, &v]() {
      lhs.gradient += rhs.val * v.gradient;
      rhs.gradient += lhs.val * v.gradient;
    };

    v.setBackward(back);
    return v;
  }

  friend auto operator-(const Value& lhs, const Value& rhs) -> Value {
    auto v = lhs + (rhs * -1);
    v.setOp('-');
    return v;
  }

  friend auto operator^(const Value& lhs, const Value& rhs) -> Value {
    auto v = Value(pow(lhs.val, rhs.val), '^', lhs, rhs);

    auto back = [&lhs, &rhs, &v]() {
      lhs.gradient += (rhs.val * pow(lhs.val, (rhs.val - 1))) * v.gradient;
    };

    v.setBackward(back);
    return v;
  }
  friend auto operator/(const Value& lhs, const Value& rhs) -> Value {
    auto v = lhs * (rhs ^ -1);
    v.setOp('/');
    return v;
  }
  friend auto operator+=(const Value& lhs, const Value& rhs) -> Value {
    lhs.val = lhs.val + rhs.val;
    return lhs;
  }
  friend Value tanh(Value& lhs) {
    auto result =
        Value((exp(lhs.val) - exp(-lhs.val)) / (exp(lhs.val) + exp(-lhs.val)),
              't', lhs);

    auto back = [&lhs, &result]() {
      lhs.gradient += 1 - pow(result.val, 2.0) * result.gradient;
    };

    result.setBackward(back);

    return result;
  }

  friend auto relu(const Value& lhs) -> Value {
    if (lhs.val < 0) {
      return Value(0);
    } else {
      return lhs;
    }
  }

  std::function<void()> b;

  void setBackward(std::function<void()> func) { b = func; }

  void backward() const {
    if (b) {
      b();
    }
  }

  [[nodiscard]] constexpr auto get() const noexcept -> T { return val; }
  [[nodiscard]] constexpr auto op() const noexcept -> char { return operation; }
  [[nodiscard]] constexpr auto grad() const noexcept -> double {
    return gradient;
  }

  void setGrad() { gradient = 1.0; }

  std::vector<const Value*> topologicalSort() {
    std::vector<const Value*> sortedNodes;
    topologicalSortHelper(this, sortedNodes);

    return sortedNodes;
  }
  void topologicalSortHelper(const Value* node,
                             std::vector<const Value*>& sortedNodes) {
    if (node == nullptr) return;

    topologicalSortHelper(node->lprev, sortedNodes);
    topologicalSortHelper(node->rprev, sortedNodes);
    sortedNodes.push_back(node);
  }
  void backwardPropogate() {
    setGrad();
    auto nodes = topologicalSort();

    // Call backward on each node in topological order
    for (int i = nodes.size() - 1; i >= 0; --i) {
      nodes[i]->backward();
    }
  }
  const Value* lprev;
  const Value* rprev;
  int print() const {
    string out;

    out = " " + std::to_string(val) + " (" + std::to_string(gradient) + ")";
    if (operation != 0) {
      if (rprev != nullptr) {
        out = std::to_string(val) + " (" + std::to_string(gradient) + ")" +
              " = " + std::to_string(lprev->val) + " (" +
              std::to_string(lprev->gradient) + ")" + " " + operation + " " +
              std::to_string(rprev->val) + " (" +
              std::to_string(rprev->gradient) + ")";

      } else {
        out = std::to_string(val) + " (" + std::to_string(gradient) + ")" +
              " = " + std::to_string(lprev->val) + " (" +
              std::to_string(lprev->gradient) + ")" + " " + operation;
      }
    }
    cout << out;

    return out.length();
  }

  void display(int count = 1) const {
    int offset = print();

    if (lprev != nullptr) {
      cout << " -|" << endl;

      for (int i = 0; i < count * offset; i++) {
        cout << " ";
        if (i % offset == 0) {
          cout << '|';
        }
      }

      (*lprev).display(count + 1);
    }
    if (rprev != nullptr) {
      for (int i = 0; i < count * offset; i++) {
        cout << " ";
        if (i % offset == 0) {
          cout << '|';
        }
      }

      (*rprev).display(count + 1);
    } else {
      cout << endl;
    }
  };

 private:
  mutable T val;
  mutable double gradient;
  char operation;
  void setOp(char o) { operation = o; }
};

#endif
