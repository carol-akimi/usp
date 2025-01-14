#include <stdio.h> 
#include <stdlib.h> 

char **aloca(int n, int m);
void leia(int linhas, int colunas, char **mat, int n, int m);
int verificar(char **mat, int i, int j);
void imprima (char **mat, int linhas, int colunas);
void desaloca (char ***mat, int linhas);


int main(void){
    int n, m;
    char **tabuleiro;
    scanf("%d %d", &n, &m); 
    int n2 = n+2; 
    int m2 = m+2; 
    tabuleiro = aloca(n2, m2); 
    leia(n2, m2, tabuleiro, n, m); 
    
    for (int i = 1; i <= n; i++){
        for (int j = 1; j <= m; j++){
            if(verificar(tabuleiro, i, j) == 1){
                tabuleiro[i][j] = '*'; 
            }
        }
    }
    
    
    imprima(tabuleiro, n, m);
    desaloca(&tabuleiro, n2);
}


char **aloca(int linhas, int colunas){
    char **p; 
    p = (char **) malloc(linhas * sizeof(char*)); 
    for(int i = 0; i < linhas; i++){
        p[i] = (char *) malloc(colunas * sizeof(char)); 
    }
    return p; 
}

void leia(int linhas, int colunas, char **mat, int n, int m){ /*linhas: n+2 colunas: m+2*/
    for (int i = 0; i < linhas; i++){
        for (int j = 0; j < colunas; j++){
            mat[i][j] = 'o'; 
        }
    }
    for (int i = 1; i <= n; i++){
        for (int j = 1; j <= m; j++){
            scanf(" %c", &mat[i][j]); 
        }
    }
}

int verificar(char **mat, int i, int j){
    int vizinhos = 0; 
    if(mat[i][j] == 'X'){
        return 0;
    }else{
        if(mat[i][j-1] == 'X'){
            vizinhos++; 
        }if(mat[i][j+1] == 'X'){
            vizinhos++; 
        }if(mat[i-1][j] == 'X'){
            vizinhos++; 
        }if(mat[i+1][j] == 'X'){
            vizinhos++; 
        }
    }
    if (vizinhos % 2 == 0){ //a quantidade eh par 
        return 1; //eh uma posicao valida 
    }else{
        return 0; 
    }
}


void imprima (char **mat, int linhas, int colunas){
    for (int i = 1; i <= linhas; i++){
        for (int j = 1; j <= colunas; j++){
            printf("%c", mat[i][j]); 
        }
        printf("\n"); 
    }
}

void desaloca (char ***mat, int linhas){
    for (int i = 0; i < linhas; i++){
        free((*mat)[i]); 
        (*mat)[i] = NULL; 
    }
    free(*mat); 
    (*mat) = NULL; 
}



