#include <iostream>
#include <cmath>       /* tanh, log */
#include <functional>
#include <vector>


using namespace std;
template <class T, class U = T>
class Value
{

public:
   Value<U>* lprev;
   Value<U>* rprev;
  T* val;
  T _val;
  char op;
  double grad;
  std::function<void()> b;
  
  Value(): val(nullptr), rprev(nullptr), lprev(nullptr), op(0), grad(0)
  {
    
  };
  Value(T* element): val(element), rprev(nullptr), lprev(nullptr), op(0), grad(0)
  {
    
  }
  Value(T element): _val(element), val(&element), rprev(nullptr), lprev(nullptr), op(0), grad(0)
  {
    
  }
  Value(T* element, T _element): val(element),_val(_element), rprev(nullptr), lprev(nullptr), op(0), grad(0)
  {
    
  }
  Value(T* element, T _element, char operation): val(element),_val(_element), rprev(nullptr), lprev(nullptr), op(operation), grad(0)
  {
    
  }
  Value(T* element, Value<U>* lhs, Value<U>* rhs): val(element), rprev(rhs), lprev(lhs), op(0), grad(0)
  {
    
  }
  Value(T* element, T _element, Value<U>* lhs, Value<U>* rhs): val(element), _val(_element), rprev(rhs), lprev(lhs), op(0), grad(0)
  {
    
  }
  Value(T* element, T _element,  Value<U>* lhs,  Value<U>* rhs, char operation): val(element), _val(_element), lprev(lhs), rprev(rhs), op(operation), grad(0)
  {
    
  }
  Value(T* element, T _element,  Value<U>* lhs, char operation): val(element), _val(_element), lprev(lhs), rprev(nullptr), op(operation), grad(0)
  {
  }
  
  void setBackward(std::function<void()> func) {
    b = func;
  }
  
  void backward() {
    if (b) {
      b();
    }
  }
  
  void display(int count = 1) const {
    
     int offset = print();

     

    if(lprev!=nullptr){
      cout << " -|" << endl;
      
      for (int i = 0; i < count*offset; i++) {
        cout << " ";
        if(i % offset == 0){
          cout << '|';
        }
      }
      
      (*lprev).display(count +1);
    }
    if(rprev!=nullptr){
      
      for (int i = 0; i < count*offset; i++) {
        cout << " ";
        if(i % offset == 0){
          cout << '|';
        }
      }
      
      (*rprev).display(count +1);
    }else {
      
      cout << endl;
    }

  }
  
  ~Value() {
    //if(val!=nullptr)
    //	delete val;
    //if(lprev!=nullptr)
    //	delete lprev;
    //if(rprev!=nullptr)
    //	delete rprev;
  }



  friend Value operator+( Value& lhs,  Value& rhs) {
    
    T _val = lhs._val + rhs._val;
    
    auto v = Value(&_val, _val, &lhs, &rhs, '+');
    
    auto greet = [&lhs, &rhs, &v] () {
      lhs.grad  += 1.0 * v.grad;
      rhs.grad += 1.0 * v.grad;
    };
    
    v.setBackward(greet);
    return v;
    
  } 
  
  
  friend Value operator-( Value& lhs,  Value& rhs) {
    
    T _val = lhs._val - rhs._val;
    
    return Value(&_val, _val, &lhs, &rhs, '-');
    
    
  } 
  
  
  friend Value operator*( Value& lhs,  Value& rhs) {
    
    T _val = lhs._val * rhs._val;
    
    auto v = Value(&_val, _val, &lhs, &rhs, '+');
    
    //Value::grad = 100;

    auto greet = [&lhs, &rhs, &v] () {
      lhs.grad  += rhs._val * v.grad;
      rhs.grad += lhs._val * v.grad;
    };
    
    v.setBackward(greet);
    return v;
    
  } 
  
  
  friend Value operator/( Value& lhs,  Value& rhs) {
    
    T _val = lhs._val / rhs._val;
    
    return Value(&_val, _val, &lhs, &rhs, '/');
    
    
  } 
  
  
 friend Value tanh(Value& lhs){

      T _val = (exp(lhs._val) - exp(-lhs._val)) / (exp(lhs._val) + exp(-lhs._val));
    
      
      auto result = Value(&_val, _val, &lhs,  't');
      
      
      auto greet = [&lhs,&result] () {
        lhs.grad  += 1- pow(result._val, 2.0) * result.grad;
      };
      
      result.setBackward(greet);
      
      return result;
  }
  
  

  
  std::vector<Value*> topologicalSort() {
    std::vector<Value*> sortedNodes;
    topologicalSortHelper(this, sortedNodes);
    return sortedNodes;
  }
  
  void topologicalSortHelper(Value* node, std::vector<Value*>& sortedNodes) {
    if (node == nullptr) return;
    
    
    topologicalSortHelper(node->lprev, sortedNodes);
    topologicalSortHelper(node->rprev, sortedNodes);

    sortedNodes.push_back(node);
  }
  
  void setGrad() {
    grad = 1.0;
  }
  
  void backwardPropogate(){
    setGrad();
    auto nodes = topologicalSort();
    // Call backward on each node in topological order
    for (int i = nodes.size() - 1; i >= 0; --i) {
      nodes[i]->backward();
    }
  }
  

  int print() const
  {
    string out;
    
    if(val!=nullptr){
      
      out = " " + std::to_string(_val) + " (" + std::to_string(grad) + ")";
      if( op != 0){
        
        if(rprev!=nullptr){
          out = std::to_string(_val) + " (" + std::to_string(grad) + ")" +  " = " + std::to_string(lprev->_val) + " (" + std::to_string(lprev->grad) + ")" + " " + op + " " + std::to_string(rprev->_val) + " (" + std::to_string(rprev->grad) + ")";
          
        } else {
          out = std::to_string(_val) + " (" + std::to_string(grad) + ")" +  " = " + std::to_string(lprev->_val) + " (" + std::to_string(lprev->grad) + ")" + " " + op;
          
        }
        

      }
    }
    cout << out;
    
    return out.length();
    
  }

};












