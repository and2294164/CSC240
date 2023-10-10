#include<vector>
#include<iostream>
using namespace std;

class Grades {
    vector<int> record;
    vector<int>::iterator iter;

    public:
    Grades(vector<int> v = {0}) {
        
        record = v;
        iter = record.begin();
    } 

    void add(int x) {

    }

    void print() {

    }

};


int main() {




    return 0;
}