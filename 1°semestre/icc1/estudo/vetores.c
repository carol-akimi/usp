#include <stdio.h>

int funcao1(int A[10]);
int MAIOR(int A[10]); 

int main (void){
    int A[10]; 
    for (int i = 0; i < 10; i++){
        scanf("%d", &A[i]); 
    }
    int qnt = 0; 
    for (int i = 0; i < 10; i++){
        if (A[i] % 2 == 0 && A[i] > 10){
            qnt++; 
        }
    }
    int maior = MAIOR(A); 

    printf("funcao 1: %d\n", qnt); 
    printf("maior: %d\n", maior); 
}



int MAIOR (int A[10]){
    int maior = A[0]; 
    for (int i =  1; i <= 10; i++){
        if (A[i] > maior){
            maior = A[i]; 
        }
    }
    return maior;
    
}

