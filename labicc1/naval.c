#include <stdio.h> 
void entrada(int *N, char mat[][28], char res[][28], int *M, int c1[28], int c2[28]);
void verificar(char mat[][28], char res[][28], int M, int c1[28], int c2[28]);
void imprimir (int N, char res[][28]);

int main(void){
    int N, M; //N eh o tamanho da matriz, M eh a quantidade de coordenadas
    char mat[28][28], res[28][28]; 
    int c1[28]; int c2[28]; 
    entrada (&N, mat, res, &M, c1, c2); 
    verificar (mat, res, M, c1, c2); 
    imprimir (N, res); 

}

void entrada(int *N, char mat[][28], char res[][28], int *M, int c1[28], int c2[28]){
    scanf("%d", N); 
    for (int i = 0; i < *N; i++){
        for (int j = 0; j < *N; j++){
            scanf(" %c", &mat[i][j]); 
            res[i][j] = mat[i][j]; //fazendo uma copia da matriz 
        }
    }
    scanf("%d", M); 
    for (int i = 0; i < *M; i++){
        char l;
        scanf(" %c", &l); 
        scanf("%d", &c2[i]); 
        c1[i] = l - 65; 
    }
}

void verificar(char mat[][28], char res[][28], int M, int c1[28], int c2[28]){
    for(int c = 0; c < M; c++){
        if(mat[c1[c]][c2[c]-1] == 'N'){
            printf("acerto!\n"); 
            res[c1[c]][c2[c]-1] = 'X'; 
            mat[c1[c]][c2[c]-1] = 'X'; 
        }else{
            printf("erro!\n"); 
        }
    }
}

void imprimir (int N, char res[][28]){
    for (int i = 0; i < N; i++){
        for (int j = 0; j < N; j++){
            printf("%c ", res[i][j]); 
        }
        printf("\n"); 
    }
}
