#include <bits/stdc++.h>
using namespace std;

int main(void){
    int h0, m0, hf, mf;
    long long soma;
    cin >> h0 >> m0 >> hf >> mf; 
    soma = (hf*60 + mf) - (h0*60 + m0);
    if(soma<=0){
        soma += 24*60;
    }
    cout << "O JOGO DUROU " << soma / 60 << " HORA(S) E " << soma % 60 << " MINUTO(S)" << "\n"; 

    return 0; 
    }
