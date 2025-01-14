#include <stdio.h> 
#include <stdlib.h>
#include "fila.h"


int digit(int num, int pos); 
/*
método estável 
*/

int main(void){
    int vet[] = {3, 9877, 153, 8, 56, 456, 90, 4, 2, 17}; 
    
    int maior = -1; 
    int max_digit = 1; 
    for (int i = 0; i < 10; i++){
        if (vet[i] > maior)   
            maior = vet[i]; 
    }

    if (maior > 9)
        max_digit = 2; 
    if (maior > 99)
        max_digit = 3; 
    if (maior > 999)
        max_digit = 4; 
    if (maior > 9999)
        max_digit = 5; 
        
    FILA *fila_v[10]; 
    for (int i = 0; i < 10; i++){
        fila_v[i] = fila_criar(); 
    }
    
    for (int pos = 0; pos < max_digit; pos++){
        for (int i = 0; i < 10; i++){
            int d = digit(vet[i], pos); 
            fila_inserir(fila_v[d], vet[i]); 
        }

        int k = 0; 
        for (int i = 0; i < 10; i++){
            while (!fila_vazia(fila_v[i])){
                vet[k++] = fila_remover(fila_v[i]); 
            }
        }
    }

    for (int i = 0; i < 10; i++){
        fila_apagar(&fila_v[i]); 
    }

}


int digit(int num, int pos){
    for (int i = 0; i < pos; i++){
        num = num / 10;
    }
    return num % 10; 
}

