#include <bits/stdc++.h>
using namespace std;

int main(void){
    int M, N, costa;
    char vet[1001][1001];
    cin >> M >> N;
    costa = 0; 
    for (int i = 0; i < M; i++){
        for(int j =0; j < N; j++){
            cin >> vet[i][j]; //pegar os valores para a matriz 
    }
    }for(int i = 1; i < (M-2); i++){
        for(int j = 1; j < (N-2); j++){
            if(vet[i][j] == '#'){
                if(vet[i-1][j] == '.' || vet[i+1][j] == '.' ||  vet[i][j-1] == '.' ||vet[i][j+1]== '.' ){
                    costa += 1; //olhando so o meio, sem as pontas
                }
            }
        }
    }
    
    for(int i =0; i<(M-1); i++){ //estamos vendo as duas colunas na ponta 
        if(vet[i][0] == '#'){ 

            costa += 1; 
        }if(vet[i][(N-1)] == '#'){
            costa += 1;}
    }   

    for(int j = 1; j<(N-2); j++){ //estamos vendo as duas linhas da ponta 
        if(vet[0][j] == '#'){ 
            costa += 1; 
        }if(vet[(M-1)][j] == '#'){
            costa += 1;}
     


    cout << costa << "\n"; 
    return 0;
    }
}


glBiyx5
