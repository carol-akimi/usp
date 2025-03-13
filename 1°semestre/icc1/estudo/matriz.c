#include <stdio.h> 
#define N 3
#define M 4

int entrada(int mat[N][M]);
int Soma(int mat[N][M], int x);

int main (void){
    int mat[N][M];
    int soma = 0; 
    int x = entrada(mat); 
    soma = Soma(mat, x); 
    printf("Soma: %d", soma); 
}

int entrada(int mat[N][M]){
    int x;
    scanf("%d", &x); 
    for (int i = 0; i < N; i++){
        for (int j = 0; j < M; j++){
            scanf("%d", &mat[i][j]); 
        }
    } 
    return x; 
}

int Soma(int mat[N][M], int x){
    int soma = 0; 
    for (int i = 0; i < N; i++){
        for (int j = 0; j < M; j++){
            if (mat[i][j] > x){
                soma += mat[i][j];
            }
        }
    }
    return soma; 
}