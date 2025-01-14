#include <stdio.h> 
#include <stdlib.h> 
/*
primeira dimensao é um vetor de ponteiros para inteiros
segunda dimensao: aloca cada um dos vetores linha para armazenar os inteiros 
*/

int main (void){
    int n; //qtd de elementos da matriz 
    int **mat; 
    scanf("%d", &n); 
    int i = 1; 
    while(i * i < n){
        i += 1; 
    }
    n = i; 
    mat = (int **) malloc(n * sizeof(int *)); //n = qtd de linhas 
    for (int i = 0; i < n; i++){
        mat[i] = (int *) malloc(n * sizeof(int)); //n = qtd de colunas 
    }
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            scanf("%d", &mat[i][j]); 
        }
    }
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            printf("%d ", mat[i][j]); 
        }
        printf("\n"); 
    }
    for (int i = 0; i < n; i++){
        free(mat[i]); 
    }
    free(mat); 
}
