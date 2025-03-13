#include <stdio.h>
#include <stdlib.h>
#include "../pilha_sequencial/Pilha.h"

int main(void){
    PILHA *p; 
    p = pilha_criar(); 
    for (int i = 0; i < 5; i++){
        int *dado;
        dado = (int*)malloc(sizeof(int)); 
        scanf("%d", dado);
        ITEM *it; 
        it = item_criar(i, dado); 
        pilha_empilhar(p, it); 
    }
    NO *topo = pilha_no_topo(p); 
    pilha_inverter(p, &topo); 
    pilha_imprimir(p); 
    pilha_apagar(&p); 
    return 0; 
}

