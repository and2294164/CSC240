#include<iostream>
#include<string>

// To compile:
//   g++ --std=c++17 -pedantic -Wall hello.cpp

int main() {
  std::string greeting = "Hello";
  std::cout << greeting << ", world!" << std::endl;
  return 0;
}