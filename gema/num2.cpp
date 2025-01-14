#include <iostream>
using namespace std;

int main(void){
    int n, k, x;
    x = 0; 
    cin >> n >> k; 
    if(n % k != 0){
        while(x < n){
        x += k; // x = k + k + ... + k ate que ele seja maior q n 
    }
        cout << x << "\n";
    }else{
        cout << n + k << "\n"; //se o numero já é divisivel, mas como nao pode ser ele é o proximo
    }


}