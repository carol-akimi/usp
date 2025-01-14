#include <stdio.h>


void ordenar(float media_ex[], int M);
void media(float mat[][25], int N, int M, float media_notas[], float media_ex[]);

int main(void){
    int N, M; //N eh para as linhas/ M eh para as colunas 
    float mat[100][25];
    float media_notas[100]; float media_ex[25];
    scanf("%d %d", &N, &M);
    for(int i = 0; i < N; i++){ //preenchendo a matriz 
        for(int j = 0; j < M; j++){
            scanf("%f", &mat[i][j]);
        }
    }
    media(mat, N, M, media_notas, media_ex);
    for(int i = 0; i < N; i++){
        printf("Media do aluno %d = %.2f : ", i+1, media_notas[i]);
        if(media_notas[i] >= 5.0){
            printf("Aprovado\n");
        }else{
            printf("Reprovado\n");
        }
    }
    printf("\n");
    ordenar(media_ex, M); 
    for(int j = 0; j < M; j++){
        printf("%.2f ", media_ex[j]);
    }
    printf("\n"); 
}

void swap(float *a, float *b){
    float temp = *a;
    *a = *b;
    *b = temp;
}
void ordenar(float vet[], int tam){ //fazer a ordenação do vetor 
    for(int i = 0; i < tam -1; i++){
        for(int j = 0; j < tam - 1 - i; j++){
            if(vet[j] < vet[j+1]){
                swap(&vet[j], &vet[j+1]);
            }
        }
    }
}

void media(float mat[][25], int N, int M, float media_notas[], float media_ex[]){
    for(int i = 0; i < N; i++){ //media da nota dos alunos
        float soma = 0.0; 
        for(int j = 0; j < M; j++){
            soma += mat[i][j];
        }
        media_notas[i] = soma/M; 
    }

    for(int j = 0; j < M; j++){ //media da nota dos exercicios 
        float soma = 0.0; 
        for(int i = 0; i < N; i++){
            soma += mat[i][j];  
        }
        media_ex[j] = soma/N; 
    }
}