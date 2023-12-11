#include<iostream>
#include<cmath>
using namespace std;

class Point {
    private:
        double x;
        double y;
    public:
        Point() { }
        Point(double x1 = 0, double y1 = 0) : x(x1), y(y1) { }
        
        double distance(Point p1) {
            return sqrt( pow(this->y - p1.y, 2) + pow(this->x - p1.x, 2)   );
        }
};


int main() {

    Point p1{3,4};
    Point origin(0,0);

    cout << "Distance between p1 and the origin: " << origin.distance(p1) << endl;


    return 0;
}