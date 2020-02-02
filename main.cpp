#include <iostream>
#include <fstream>

using namespace std;

int main() {
    string filename;
    // EXAMPLE: ../data/a_example.in
    cin >> filename;
    ifstream fs(filename);
    int max_number, pizza_number;
    fs >> max_number;
    fs >> pizza_number;
    int pizza_sizes[pizza_number];
    cout << max_number << endl << pizza_number << endl;
    for(int i = 0; i < pizza_number; i++) fs >> pizza_sizes[i];
    for(int i = 0; i < pizza_number; i++) cout << pizza_sizes[i];
    return 0;
}