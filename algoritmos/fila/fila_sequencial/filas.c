#include <stdio.h> 
#include <stdlib.h>
#include "../item/item.h"
#include "filas.h"


struct fila_{
    ITEM *fila[TAM];
    int inicio; 
    int fim; //posicao do ultimo elemento da fila
    int tamanho;
};

FILA *fila_criar(void){
    FILA *fila; 
    fila = (FILA*) malloc(sizeof(FILA));
    if (fila != NULL){
        fila->inicio = 0; 
        fila->fim = 0;
        fila->tamanho = 0;
    }
    return fila; 
}

bool fila_inserir(FILA *fila, ITEM *item){
    if (!fila_cheia(fila)){
        fila->fila[fila->fim] = item; 
        fila->fim = (fila->fim + 1) % TAM; 
        fila->tamanho++; 
        return true;
    }
    return false; 
}

ITEM *fila_remover(FILA *fila){
    if (!fila_vazia(fila)){
        ITEM *it; 
        it = fila->fila[fila->inicio]; 
        fila->fila[fila->inicio] = NULL; 
        fila->inicio = (fila->inicio + 1) % TAM;  
        fila->tamanho--; 
        return it;
    }
    return NULL; 
}

ITEM *fila_frente(FILA *fila){
    if (!fila_vazia(fila))
        return fila->fila[fila->inicio]; 
}

bool fila_vazia(FILA *fila){
    if (fila != NULL)
        return (fila->tamanho == 0 ? true : false);
    return false; 
}

bool fila_cheia(FILA *fila){
    if (fila != NULL)
        return (fila->tamanho == TAM ? true : false);
    return false; 
}


