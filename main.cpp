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
    // cout << max_number << endl << pizza_number << endl;
    for(int i = 0; i < pizza_number; i++) fs >> pizza_sizes[i];
    // for(int i = 0; i < pizza_number; i++) cout << pizza_sizes[i];

    int M[pizza_number + 1][max_number+1];

    for(int w=0; w <= max_number; w++) M[0][w] = 0;
    for(int i=1; i<=pizza_number; i++){
        for(int w=0; w <= max_number; w++){
            if(pizza_sizes[i-1] > w) M[i][w] = M[i-1][w];
            else{
                M[i][w] = max(M[i - 1][w], pizza_sizes[i-1] + M[i-1][w - pizza_sizes[i-1]]);
            }
        }
    }

    int number = pizza_number, current_max = max_number, solution[pizza_number], i = 0;
    while(number > 0) {
        if(pizza_sizes[number-1] + M[number-1][current_max - pizza_sizes[number-1]] > M[number-1][current_max]){
            current_max -= pizza_sizes[number-1];
            solution[i] = number-1;
            i++;
        }
        number--;
    }

    cout << i << endl;
    for(int j = 0; j < i; j++) cout << solution[j];
    // cout << endl << M[pizza_number][max_number];

    return 0;
}