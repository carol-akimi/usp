#include <bits/stdc++.h>
using namespace std;

int pot(int n){
    int mult = 1;
    for(int i = 0; i < n; i++){
        mult *= 2;
    }
    return mult;
}


int main(void){
    int N, k, soma, vet[10000000000000];
    cin >> N;
    soma = 0;
    k = 0;
    for(int i = 0; i < (pot(N)-1); i++){
        cin >> vet[i];
    }
    while(k < pot(N)-2){
        for(int i = 0; i < (pot(N)-1); i++){
            if(vet[i+1]>vet[i+2]){
                soma += vet[i] + vet[i+1];
            }else{
                soma += vet[i] + vet[i+2];
            }
    }
    }
    cout << soma; 
    return 0; 
}