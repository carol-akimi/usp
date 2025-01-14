#include <bits/stdc++.h>
using namespace std;

int main(void){
    int vet[8], soma;
    for(int i = 0; i < 8; i++){
        cin >> vet[i];
    }
    for(int i = 0; i<7; i++){
        soma += vet[i];
    }
    if(soma % 2 == 0 && vet[7]==1){
        cout << "S\n";
    }else if(soma % 2 == 1 && vet[7]==0){
        cout << "S\n";
    }else{
        cout << "N?\n";
    }


    return 0;
}