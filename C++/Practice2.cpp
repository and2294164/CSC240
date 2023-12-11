#include<iostream>

using namespace std;

class DynamicArray {
    int size;
    int* arr;

    public:
    DynamicArray(int n = 0) {
        size = n;
        arr = new int[n];
    }
    ~DynamicArray() {
        delete[] arr;
        arr = nullptr;
    }

    void fill_array(int n) {

        for(int i = 0; i < n; i++) {
            *(arr+i) = i+1;
            
        }
    }

    void print_array() {

        for(int i = 0; i < size; i++) {

            cout << "arr[" << i << "] = " << arr[i] << endl;
        }
        cout << "size = " << size << endl;
    }

};


int main()
{
    DynamicArray a(9);
    a.fill_array(1);   /* fills array with consecutive #’s */
    a.print_array();
    
    DynamicArray b(5);
    b.fill_array(20);
    b.print_array();
}
