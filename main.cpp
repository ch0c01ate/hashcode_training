#include <iostream>
#include <fstream>
#include <vector>
using namespace std;



vector<string> split(string filename, char delim){
    vector<string> tokens;
    size_t prev = 0, pos = 0;
    do
    {
        pos = filename.find(delim, prev);
        if (pos == string::npos) pos = filename.length();
        string token = filename.substr(prev, pos-prev);
        if (!token.empty()) tokens.push_back(token);
        prev = pos + 1;
    }
    while (pos < filename.length() && prev < filename.length());
    return tokens;
}


int main() {
    string filename;
    // EXAMPLE: ../data/a_example.in
    cin >> filename;
    vector<string> tokens;
    tokens = split(filename, '/');
    string letter;
    letter = split(tokens[2], '_')[0];
    ifstream fs(filename);
    int max_number, pizza_number;
    fs >> max_number;
    fs >> pizza_number;
    int pizza_sizes[pizza_number];
    // cout << max_number << endl << pizza_number << endl;
    for (int i = 0; i < pizza_number; i++) fs >> pizza_sizes[i];
    // for(int i = 0; i < pizza_number; i++) cout << pizza_sizes[i];
    int M[pizza_number + 1][max_number + 1];
    //int *M = new int[()*(max_number + 1)];
    //std::vector<std::vector<int> > M(pizza_number + 1, std::vector<int>(max_number + 1));
    for (int w = 0; w <= max_number; w++) M[0][w] = 0;
    for (int i = 1; i <= pizza_number; i++) {
        for (int w = 0; w <= max_number; w++) {
            if (pizza_sizes[i - 1] > w) {
                M[i][w] = M[i - 1][w];
            } else {
                M[i][w] = max(M[i - 1][w], pizza_sizes[i - 1] + M[i - 1][w - pizza_sizes[i - 1]]);
            }
        }
    }
    int number = pizza_number, current_max = max_number, solution[pizza_number], i = 0;

    while(number > 0) {
        if(pizza_sizes[number-1] + M[number-1][current_max - pizza_sizes[number-1]] == M[number][current_max]){
            current_max -= pizza_sizes[number-1];
            solution[i] = number-1;
            i++;
        }
        number--;
    }

    ofstream result;
    string folder_name = "../results/";
    result.open(folder_name.append(letter).append("_result.txt"));
    result << i << endl;
    for(int j = i-1; j>0; j--) result << solution[j] << " ";
    result << solution[0] << endl;
    result.close();


    return 0;
}