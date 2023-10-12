#include<vector>
#include<iostream>
#include"Practice3.hpp"
using namespace std;


NumberList::NumberList(int x = 1, vector<int> v = {1}) {
    
    if( x >= (int) v.capacity() ) {
        max = x;
        num_list = v;
        cout << "NumberClass object created successfully" << endl;

    } 
    else {
        cout << "Error, number of ints exceeds maximum size." << endl;
    }
}
NumberList::~NumberList() { }

void NumberList::add(int x) { 
    if( max >= (int) num_list.capacity() ) {
        num_list.push_back(x);
    } else {
        cout << "Error, number of ints exceeds maximum size." << endl;
    }
}
void NumberList::print() {

    for(vector<int>::iterator iter = num_list.begin(); iter != num_list.end(); iter++) {
        cout << "NumberList[" << distance(num_list.begin(), iter) << "] = " << *iter << endl;
    }
}






int main() {

    vector<int> v1{3,4,5,7};
    vector<int> v2{50, 60, 70};

    cout << "numList1: " << endl;
    NumberList numList1(5, v1);
    numList1.print();
    cout << endl;

    cout << "numList2: " << endl;
    NumberList numList2(2, v2);
    cout << endl;
    
    cout << "numList3: " << endl;
    NumberList numList3(10, {2, 4, 6, 8, 10});
    numList3.print();

    cout << endl << "adding numbers to numList3" << endl;
    numList3.add(1);
    numList3.add(3);
    numList3.add(5);
    numList3.add(7);
    numList3.add(9);
    numList3.print();

    //cout << "v1.add" << endl;
    
}