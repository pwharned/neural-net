#include <iostream>
using namespace std;

template <class T>
class Value
{

public:
  Value<T>* lprev;
  Value<T>* rprev;
  T* val;
  T _val;
  char op;
  double grad;
  Value();
  Value(T* element);
  Value(T element);
  Value(T* element, T _element);
  Value(T* element, Value<T>* lprev, Value<T>* rprev);
  Value(T* element, T _element, Value<T>* lprev, Value<T>* rprev);
  Value(T* element, T _element, Value<T>* lprev, Value<T>* rprev, char operation);
  
  void print();
  void display(int count = 1);
  ~Value();

 // template <class U> friend Value<U> operator+(Value<T>& lhs, Value<T>& rhs) ;
  //template <class U> friend Value<U> operator*(Value<T>& lhs, Value<T>& rhs) ;
//  template <class U> friend Value<U> operator-(Value<T>& lhs, Value<T>& rhs) ;
//  template <class U> friend Value<U> operator/(Value<T>& lhs, Value<T>& rhs) ;

  template <class U> friend Value<U> operator+(Value<T> lhs, Value<T> rhs) ;
  template <class U> friend Value<U> operator*(Value<T> lhs, Value<T> rhs) ;
  template <class U> friend Value<U> operator-(Value<T> lhs, Value<T> rhs) ;
  template <class U> friend Value<U> operator/(Value<T> lhs, Value<T> rhs) ;
};

template <class T>
Value<T> operator+( Value<T> lhs,  Value<T> rhs) {
  
  T _val = lhs._val + rhs._val;
  
  Value<T> result = Value<T>(&_val, _val, &lhs, &rhs, '+');
  
  
  return result;
}


template <class T>
Value<T> operator*( Value<T> lhs,  Value<T> rhs) {
  
  T _val = lhs._val * rhs._val;
  
  Value<T> result = Value<T>(&_val, _val, &lhs, &rhs, '*');
  
  
  return result;
}
template <class T>
Value<T> operator-( Value<T> lhs,  Value<T> rhs) {
  
  T _val = lhs._val - rhs._val;
  
  Value<T> result = Value<T>(&_val, _val, &lhs, &rhs, '-');
  
  
  return result;
}

template <class T>
Value<T> operator/( Value<T> lhs,  Value<T> rhs) {
  
  T _val = lhs._val / rhs._val;
  
  Value<T> result = Value<T>(&_val, _val, &lhs, &rhs, '/');
  
  
  return result;
}



template <class T>
Value<T>::Value(): val(nullptr), rprev(nullptr), lprev(nullptr), op(0), grad(0)
{

}

template <class T>
Value<T>::Value(T* element): val(element), rprev(nullptr), lprev(nullptr), op(0), grad(0)
{

}
template <class T>
Value<T>::Value(T element): _val(element), val(&element), rprev(nullptr), lprev(nullptr), op(0), grad(0)
{
  
}
template <class T>
Value<T>::Value(T* element, T _element): val(element),_val(_element), rprev(nullptr), lprev(nullptr), op(0), grad(0) 
{

}

template <class T>
Value<T>::Value(T* element, Value<T>* lhs, Value<T>* rhs): val(element), rprev(lhs), lprev(rhs), op(0), grad(0)
{

}
template <class T>
Value<T>::Value(T* element, T _element, Value<T>* lhs, Value<T>* rhs): val(element), _val(_element), rprev(lhs), lprev(rhs), op(0), grad(0)
{

}
template <class T>
Value<T>::Value(T* element, T _element, Value<T>* lhs, Value<T>* rhs, char operation): val(element), _val(_element), rprev(lhs), lprev(rhs), op(operation), grad(0)
{
  
}


template <class T>
void Value<T>::print()
{

	if(val!=nullptr){
	cout << " " << _val;
	if( op != 0){
	cout <<  " = " << lprev->_val << " " << op << " " << rprev->_val;
	}
	}

}

template <class T>
void Value<T>::display(int count)
{
	print();



	Value<T> *l = lprev;
	Value<T> *r = rprev;
	if(l!=nullptr){
	  cout << " -| " << endl;
	  
	  for (int i = 0; i < count*11; i++) {
	    cout << " ";
	  }
	  
	(*l).display(count +1);
	}
	if(r!=nullptr){

	  for (int i = 0; i < count*11; i++) {
	    cout << " ";
	  }
	  
	(*r).display(count +1);
	}else {
	  
	  cout << endl;
	}
	count +=1;
	
}

template <class T>
Value<T>::~Value()
{
	//if(val!=nullptr)
	//	delete val;
	//if(lprev!=nullptr)
	//	delete lprev;
	//if(rprev!=nullptr)
	//	delete rprev;
}
