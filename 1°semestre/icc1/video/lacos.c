#include <stdio.h> 

void matriz (int mat[3][3]); 
int fatorial (int n); 

int main (void) {
    int soma = 0; 
    int mat[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}; 
    matriz(mat); 
    printf("%d\n", fatorial(5)); 

}

/*EXEMPLOS*/

/*leitura de uma matriz*/

void matriz (int mat[3][3]) {
    for (int i = 0; i < 3; i++){
        for (int j = 0; j < 3; j++){
            printf("%d ", mat[i][j]); 
        }
        printf("\n"); 
    }
}

int fatorial (int n) {
    /*fatorial (n!)
    fat = n * (n-1) *(n-2) * ... * 1; 
    */
    int fat = 1; 
    while (n >= 1) {
        fat *= n; 
        n--; 
    }
    return fat; 
}

