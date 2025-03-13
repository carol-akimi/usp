#include <stdio.h> 
void entrada (int *tam1, int *tam2, int mat1[][100], int mat2[][100]); 
int diagonal (int tam, int mat[][100]);
void mult (int tam1, int tam2, int mat1[][100], int mat2[][100]);


int main (void){
    int N, M; 
    int mat1[100][100], mat2[100][100];

    entrada (&N, &M, mat1, mat2); 
    printf("Matrizes:\n"); 
    for (int i = 0; i < N; i++){
        for (int j = 0; j < N; j++){
            printf("%d ", mat1[i][j]);  
        }
        printf("\n");
    }
    for (int i = 0; i < M; i++){
        for (int j = 0; j < M; j++){
            printf("%d ", mat2[i][j]);  
        }
        printf("\n");
    }

    if(diagonal (N, mat1) == 1){
        printf("A matriz 1 eh diagonal\n");
    }else{
        printf("A matriz 1 nao eh diagonal\n");
    }
     if(diagonal (M, mat2) == 1){
        printf("A matriz 2 eh diagonal\n");
    }else{
        printf("A matriz 2 nao eh diagonal\n");
    }

    mult(N, M, mat1, mat2); 

    return 0; 
}

void entrada (int *tam1, int *tam2, int mat1[][100], int mat2[][100]){
    scanf("%d %d", tam1, tam2);
    for (int i = 0; i < *tam1; i++){
        for (int j = 0; j < *tam1; j++){
            scanf("%d", &mat1[i][j]); 
        }
    } 
    for (int i = 0; i < *tam2; i++){
        for (int j = 0; j < *tam2; j++){
            scanf("%d", &mat2[i][j]); 
        }
    } 
    return;  
}

int diagonal (int tam, int mat[][100]){
    int diferente = 0; //vai contar se existe um numero que não é zero 
    for (int i = 0; i < tam; i++){
        for (int j = 0; j < tam; j++){
            if(i != j){
                if(mat[i][j] != 0){
                    diferente += 1; 
                }
            }
        }
    }
    if(diferente == 0){
        return 1; //é uma matriz diagonal 
    }else{
        return 0; //nao eh uma matriz diagonal
    }
}

void mult (int tam1, int tam2, int mat1[][100], int mat2[][100]){
    if (tam1 != tam2){
        printf("Matrizes de tamanho incompativel\n"); 
    }else{
        printf("Matriz multiplicada:\n"); 
        int a = 0; 
        for(int v = 0; v < tam1; v++){
            for (int i = 0; i < tam1; i++){
                int soma = 0; 
                for (int j = 0; j < tam1; j++){
                    soma += mat1[a][j] * mat2[j][i]; 
                }
                printf("%d ", soma); 
            }
            a += 1; 
            printf("\n"); 
        }
    }
}