#include <bits/stdc++.h>
using namespace std;

int main(void){
    int N, esportes;
    cin >> N;
    esportes = 0; 
    while(N >= 8){
        N = N -8;
        esportes += 1;
    }while(N >= 4){
        N = N - 4;
        esportes += 1;
    }while(N >= 2){
        N = N - 2;
        esportes += 1;
    }while(N >= 1){
        N = N - 1;
        esportes += 1;
    }


    cout << esportes << "\n";
    return 0;
}