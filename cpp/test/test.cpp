// main.cpp
#include <iostream>
#include "../include/grad.hpp"
#include <cassert>

void testAddition() {
	
	Value<int> a = 4;
  
	Value<int> b = 2;
	Value<int> c = a + b;
	c.display();
	
	assert(c._val==6);
	
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
  
  

  Value<int> a = 4;
  Value<int> b = 2;
  Value<int> c = 2;
  
  Value<int> res  = a + b + c;
  
  assert(res._val == 8);
  
  res.display();
  
  
  

  
  std::cout << "Test Multiple passed"<< std::endl;
  
}


int main() {
	

	testAddition();
	testSubtraction();
	testMultiplication();
	testDivision();
	testConversion();
	testMultiple();
	return 0;
}

