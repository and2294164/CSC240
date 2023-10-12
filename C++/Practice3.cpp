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
        cout << "Error, max size is smaller than vector capacity" << endl;
    }
}
NumberList::~NumberList() {

    num_list.clear();
    //free(num_list); causes an error

    cout << "NumberList deleted" << endl;
}
void NumberList::add(int x) { 
    if( x >= (int) num_list.capacity() ) {
        num_list.push_back(x);
    } else {
        cout << "Error, max size is smaller than vector capacity" << endl;
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

    NumberList numList1(5, v1);
    numList1.print();
    NumberList numList2(2, v2);

    //cout << "v1.add" << endl;
    
}