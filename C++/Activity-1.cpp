#include<iostream>

class MyClass {
  private:
    int num;
  public:
    MyClass(int x=0) {
      num = x;
    }
    int doubleNum();    // Returns num times 2
    void print();       // Prints num
};

int MyClass::doubleNum() {
    return num * 2;
}

void MyClass::print() { 
    std::cout << "num = " << num << std::endl ; 
}

int main() {

    MyClass obj1{2};

    std::cout<< "obj1" << std::endl;
    obj1.print();

    std::cout<< "doubleNum = " << obj1.doubleNum() << std::endl;


    return 0;
}