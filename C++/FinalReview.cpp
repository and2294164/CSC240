#include<iostream>
#include<vector>



void addindex(std::vector<int> vec) {

    for(unsigned int i = 0; i < vec.size(); i++) {
        vec[i] += i;
        std::cout << vec[i] << ", " << std::endl;
    }
}


int main(void) {

    std::vector<int> vec = {1, 2, 3};

    addindex(vec);

}