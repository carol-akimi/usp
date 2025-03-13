#include <stdio.h> 
#include <stdlib.h> 

int **aloca(int l, int c);
void entrada (int **mat, int M, int N);
void transpor(int **mat, int **t, int l, int c);
void imprimir (int **mat, int M, int N);
void desaloca(int ***mat, int l);

int main(void){
    int **mat, **t;
    int M, N; //M - linhas N-colunas 
    scanf("%d %d", &M, &N);
    mat = aloca(M, N);
    entrada(mat, M, N);

    t = aloca(N, M);

    transpor(mat, t, N, M);

    imprimir(t, N, M);

    desaloca(&mat, M);

    desaloca(&t, N);
    return 0;
}

int **aloca(int l, int c){
    int **m;
    m = (int**) malloc(sizeof(int*)*l);
    for (int i = 0; i < l; i++){
        m[i] = (int*) malloc(sizeof(int)*c);
    }
    return m;
}

void entrada (int **mat, int M, int N){
    for (int i = 0; i < M; i++){
        for (int j = 0; j < N; j++){
            scanf("%d", &mat[i][j]);
        }
    }
}

void transpor(int **mat, int **t, int l, int c){
    for (int i = 0; i < l; i++){
        for (int j = 0; j < c; j++){
            t[i][j] = mat[j][i];
        }
    }
}

void imprimir (int **mat, int M, int N){
    for (int i = 0; i < M; i++){
        for (int j = 0; j < N; j++){
            printf("%d ", mat[i][j]);
        }
        printf("\n");
    }
}

void desaloca(int ***mat, int l){
    for (int i = 0; i < l; i++){
        free((*mat)[i]);
        (*mat)[i] = NULL;
    }
    free(*mat);
    (*mat) = NULL; 
}