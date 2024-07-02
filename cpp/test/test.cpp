// main.cpp
#include <iostream>
#include "../include/grad.hpp"
#include <cassert>
#include <math.h>
void testAddition() {
	
	Value<int> a = 4;
  
	Value<int> b = 2;
	Value<int> c = a + b;
	c.display();
	
	//assert(c._val==6);
	
	std::cout << "Test Addition passed"<< std::endl;


}

void testSubtraction() {
	
	Value<int> a = 4;
  
  Value<int> b = 2;
  Value<int> c = a - b;
  c.display();

  assert(c._val==2);
	std::cout << "Test Subtraction passed"<< std::endl;
	
}

void testMultiplication() {

  Value<int> a = 4;
  
  Value<int> b = 2;
  Value<int> c = a * b;
  
  c.display();
  
  assert(c._val==8);
  std::cout << "Test Multiplication passed"<< std::endl;
  

}

void testDivision() {
	
	Value<int> a = 4;
  
  Value<int> b = 2;
  Value<int> c = a / b;
  c.display();
  
  assert(c._val==2);
  std::cout << "Test Division passed"<< std::endl;
}


void testConversion() {
  
  
  int i = 4;
  
  Value<int> myvalue = 4;
  
  assert(*myvalue.val==4);
  assert(myvalue._val==4);
  
  std::cout << "Test conversion passed"<< std::endl;
  
}


void testMultiple() {
  
  

  Value<int> a = 2;
  Value<int> b = -3;
  Value<int> c = 10;
  
  Value<int> e  = a * b;
  Value<int> d = e+c;
  Value<int> f= -2;
  auto L = d*f;
  

  L.display();
  

  
  

  
  std::cout << "Test Multiple passed"<< std::endl;
  
}

void testTanh() {
  
  


  Value<double> a = 2;
  Value<double> b = -3.2;
  Value<double> c = 10.5;
  
  Value<double> e  = a * b;
  Value<double> d = e+c;
  

  Value<double> f= -3;
  Value<double> L = d*f;
  

  Value<double> t = L.tanh();


  t.display();

  std::cout << "Test Tanh passed"<< std::endl;
  

  
}

void testGrad() {
  
  
  
  
  Value<double> x1 = 2;
  Value<double> x2 = 0.0;
  Value<double> w1 = -3;
  
  Value<double> w2  = 1;
  Value<double> b = 6.8813735870195432;
  
  auto x1w1 = x1*w1;
  auto x2w2 = x2*w2;
  auto x1w1x2w2 = x1w1 +x2w2;
  auto n = x1w1x2w2 + b; 
  auto o = n.tanh();
  
  o.grad = 1;
  o.backward();
  o.display();
  
  std::cout << "Test Grad passed"<< std::endl;
  
  
}



int main() {
	

	testAddition();
	testSubtraction();
	testMultiplication();
	testDivision();
	testConversion();
	testMultiple();
	testTanh();
	testGrad();
	return 0;
}

