#include <stdio.h> 
void entrada (int *N, int *M, char mat[][20]);
void lugar (int N, int M, char mat[][20], char res[][20]); 
void verificar (char res[][20], int N, int M);

int main (void){
    int N, M;
    char mat[20][20]; char res[20][20]; 
    entrada (&N, &M, mat);
    lugar (N, M, mat, res);
    verificar (res, N, M); 
    
}

void entrada (int *N, int *M, char mat[][20]){
    scanf("%d %d", N, M);
    for (int i = 0; i < *N; i++){
        for (int j = 0; j < *M; j++){
            scanf(" %c", &mat[i][j]); 
        }
    } 
    return;  
}

void lugar (int N, int M, char mat[][20], char res[][20]){
    for (int i = 0; i < N; i++){
        for (int j = 0; j < M; j++){
            int proibido = 0; 
            if(mat[i][j] == 'v'){
                int cont = 0;
                for(int c = 0; c < M; c++){
                    if(mat[i][c] == 'c')
                        proibido += 1;  
                }
                for(int l = 0; l < N; l++){
                    if(mat[l][j] == 'c')
                        proibido += 1; 
                }
                if(proibido >= 1){
                    res[i][j] = 'x'; 
                }else{
                    res[i][j] = 'o'; 
                    cont += 1;
                } 
            }else{
                res[i][j] = 'x';
            }
        }
    }
} 

void verificar (char res[][20], int N, int M){
    int soma = 0;
    for (int i = 0; i < N; i++){
        for (int j = 0; j < M; j++){
            if(res[i][j] != 'x')
                soma += 1; 
        }
    }
    if(soma == 0){
        printf("Eh um dia triste para os mono Yasuo\n"); 
    }else{
       for (int i = 0; i < N; i++){
            for (int j = 0; j < M; j++){
                printf("%c ", res[i][j]); 
        }
        printf("\n");
        } 
    }
}