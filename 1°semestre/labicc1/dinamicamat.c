#include <stdio.h> 
#include <stdlib.h> 
/*
primeira dimensao é um vetor de ponteiros para inteiros
segunda dimensao: aloca cada um dos vetores linha para armazenar os inteiros 
*/
int **aloca(int n);
int sqrt(int N);
void leia(int **mat, int n);
void imprima(int **mat, int n);
void desaloca(int ***mat, int n); 

int main (void){
    int n; //qtd de elementos da matriz 
    int **mat; 
    scanf("%d", &n); 
    n = sqrt(n); 
    mat = aloca(n);     
    leia(mat, n); 
    imprima(mat, n); 
    desaloca(&mat, n); 
    return (0); 
}

int sqrt (int N){
    int i = 1; 
    while(i * i < N)
        i += 1; 
    return i; 
}

int **aloca (int n){
    int **p; 
    p = (int **) malloc(n * sizeof(int *)); //n = qtd de linhas 
    for (int i = 0; i < n; i++){
        p[i] = (int *) malloc(n * sizeof(int)); //n = qtd de colunas 
    }
    return p; 
}

void leia (int **mat, int n){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            scanf("%d", &mat[i][j]); 
        }
    }
}

void imprima (int **mat, int n){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            printf("%d ", mat[i][j]); 
        }
        printf("\n"); 
    }
}

void desaloca (int ***mat, int n){
    for (int i = 0; i < n; i++){
        free((*mat)[i]); 
        (*mat)[i] = NULL; 
    }
    free(*mat); 
    (*mat) = NULL; 
}
