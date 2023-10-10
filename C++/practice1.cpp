#include<iostream>
#include<string>

using namespace std;

class Movie {
    private: 
        string title;
        string director;
        string rating;
        int releaseYear;

    public: 
        Movie(string t="noname", string d="noone", string r="norating", int y=-1) {
            title = t;
            director = d;
            rating = r;
            releaseYear = y;
        }
        void printMovie() {
            cout << "title: " << title << endl;
            cout << "director: " << director << endl;
            cout << "rating: " << rating << endl;
            cout << "release year: " << releaseYear << endl;
        }
};

int main() {

    Movie mov1{"The Matrix", "The Wachowskis", "R", 1999 };
    Movie* movptr = new Movie{};

    cout << "mov1: " << endl;
    mov1.printMovie();

    cout << endl << "movptr:" << endl;
    movptr->printMovie();



    return 0;
}