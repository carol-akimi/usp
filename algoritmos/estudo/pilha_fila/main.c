#include <stdio.h>
#include <stdlib.h> 
#include "fila.h"
#include "Pilha.h"

int main(void){
    FILA *f;
    f = fila_criar(); 
    for (int i = 0; i < 5; i++){
        int *dado;
        dado = (int*)malloc(sizeof(int)); 
        scanf("%d", dado);
        ITEM *it; 
        it = item_criar(i, dado); 
        fila_inserir(f, it); 
    }
    fila_imprimir(f); 
    ITEM *it = fila_remover(f); 
    int *dado = item_get_dados(it); 
    printf("dado: %d\n", *dado); 
    fila_imprimir(f); 
    fila_apagar(&f); 
    return 0; 
}