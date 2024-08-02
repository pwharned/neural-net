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

  void setLprev(const Value* new_lprev) const {
    Value* iq = const_cast<Value*>(lprev);
    iq = const_cast<Value*>(new_lprev);
  }
  void setPrev(Value* new_prev) const { prev = new_prev; };

  void setRprev(const Value* new_rprev) {
    Value* iq = const_cast<Value*>(rprev);
    iq = const_cast<Value*>(new_rprev);
  }

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

  friend void operator+=(Value& lhs, const Value& rhs) {
    Value* new_l = new Value(lhs.val, lhs.operation, *lhs.lprev,
                             *lhs.rprev);  // create a new node
    // new_v->rprev = &rhs;
    Value* v = &lhs;

    // Value* new_r = new Value(rhs.val, rhs.operation, lhs, rhs);

    v->lprev = new_l;
    v->rprev = &rhs;
    v->operation = '+';

    lhs.val = lhs.val + rhs.val;
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
    cout << "success" << endl;
    // Call backward on each node in topological order
    for (int i = nodes.size() - 1; i >= 0; --i) {
      nodes[i]->backward();
    }
  }
  const Value* lprev = nullptr;
  const Value* rprev = nullptr;
  Value* prev;
  int print() const {
    string out;

    out = " " + std::to_string(val) + " (" + std::to_string(gradient) + ")";
    if (lprev != nullptr) {
      out += (" = " + std::to_string(lprev->val) + " (");
      out += (std::to_string(lprev->gradient) + ")" + " " + operation + " ");
    }
    if (rprev != nullptr) {
      out += std::to_string(rprev->val) + " (";
      out += std::to_string(rprev->gradient) + ")";
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
  char operation = 0;
  void setOp(char o) { operation = o; }
};

#endif
