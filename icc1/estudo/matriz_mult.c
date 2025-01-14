#include <stdio.h> 
#include <stdlib.h>

//lembre de colocar as declaracoes das funcoes 
int **aloca_mat(int linhas, int colunas);
void leia(int **mat, int linhas, int colunas);
void multiplicacao(int **resolucao, int **mat, int **mat2, int l, int c, int l2, int c2);
void imprima(int **mat, int l, int c); 
void desaloca(int ***mat, int l);


int main (void){
    int **mat; int **mat2; 
    int l, c; int l2, c2; 
    int **resolucao; 
    scanf("%d %d", &l, &c); //coloque o &
    mat = aloca_mat(l, c);  
    leia(mat, l, c); 
    scanf("%d %d", &l2, &c2);
    mat2 = aloca_mat(l2, c2);  
    leia(mat2, l2, c2); 
    if (c == l2){
        resolucao = aloca_mat(l, c2);
        multiplicacao(resolucao, mat, mat2, l, c, l2, c2);
        imprima(resolucao, l, c2);
        desaloca(&resolucao, l);
    }
    desaloca(&mat, l); //nao esqueca de desalocar memoria 
    desaloca(&mat2, l2);

    return 0; 

}

int **aloca_mat(int linhas, int colunas){
    int **m; 
    m = (int**) malloc(sizeof(int*) * linhas); 
    for (int i = 0; i < linhas; i++){
        m[i] = (int*) malloc(sizeof(int) * colunas); 
    }
    return m;
}

void leia(int **mat, int linhas, int colunas){
    for (int i = 0; i < linhas; i++){
        for (int j = 0; j < colunas; j++){
            scanf(" %d", &mat[i][j]);
        }
    }
    return;
}

void multiplicacao(int **resolucao, int **mat, int **mat2, int l, int c, int l2, int c2){
    for (int i = 0; i < l; i++) {
        for (int j = 0; j < c2; j++) {
            resolucao[i][j] = 0;
            for (int k = 0; k < c; k++) {
                resolucao[i][j] += mat[i][k] * mat2[k][j];
            }
        }
    }
}

void imprima(int **mat, int l, int c){
    for (int i = 0; i < l; i++){
        for (int j = 0; j < c; j++){
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