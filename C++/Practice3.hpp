#ifndef PRACTICE3_HPP
#define PRACTICE3_HPP

#include<vector>
using namespace std;

class NumberList {
    private:
        int max;
        vector<int> num_list;

    public:
        NumberList(int x, vector<int> v);
        ~NumberList();
        void add(int x);
        void print();
};

#endif