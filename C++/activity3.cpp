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

        record.push_back(x);
    }

    void add(vector<int> v) {

        for(iter = v.begin(); iter != v.end(); iter++) {
        
            record.push_back(*iter);
        }
    }

    void print() {

        double total;

        for(iter = record.begin(); iter != record.end(); iter++) {

            total += *iter;
            cout << "record[" << distance(record.begin(), iter) << "] = " << *iter << endl;
        }
        cout << "average = " << total / record.size() << endl;

    }

};


int main() {

    vector<int> scores{81, 90, 79, 85};


    Grades reportCard(scores);
    reportCard.print();

    cout << endl << "after using vector.add(int x)" << endl;
    reportCard.add(100);
    reportCard.print();

    cout <<endl << "after using vector.add(vector<int> v)" << endl;
    vector<int> moreScores{80, 85, 90, 95, 100};
    reportCard.add(moreScores);
    reportCard.print();



    return 0;
}