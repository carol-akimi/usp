#include <iostream>
using namespace std; 

int main(void){
    int k, n, w, valor;
    cin >> k >> n >> w;
    valor = ((k+ k*w)*w) / 2; // k + 2k + ... + wk
    if (n >= valor){
        cout << 0; 
    } else{
        cout << valor - n << "\n"; 
    }
}