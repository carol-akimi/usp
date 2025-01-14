#include <stdio.h> 


/*olhar os elementos de uma matriz*/
int main(void){
    int mat[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}; 
    for(int i = 0; i < 3; i++){ //percorrer as linhas 
        for (int j = 0; j < 3; j++){ //percorrer as colunas 
            printf("%d ", mat[i][j]); //imprimir o elemento 
        }
        printf("\n"); 
    }

}