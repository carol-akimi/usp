#include <stdio.h> 
#include <stdlib.h> 
#include "../../item/item.h"
#include "../../fila_encadeada/fila.h"
#include "Pilha.h"

/*    ITEM *pilha[TAM]; 
    int tamanho; */

//fila feita por duas pilhas 
struct fila_enc{
    PILHA *principal;
    PILHA *aux; 
}; 

FILA *fila_criar(void){
    FILA *f; 
    f = (FILA*) malloc(sizeof(FILA)); 
    if(f != NULL){
        f->principal = pilha_criar();
        f->aux = pilha_criar(); 
    }
    return f; 
}

bool fila_inserir(FILA *f, ITEM *it){
    if (!fila_cheia(f)){
        pilha_empilhar(f->principal, it); 
        return true; 
    }
    return false; 
}

ITEM *fila_remover(FILA *f){
    if (!fila_vazia(f)){
        int tam = fila_tamanho(f); 
        for (int i = 0; i < tam-1; i++){
            ITEM *aux; 
            aux = pilha_desempilhar(f->principal); 
            pilha_empilhar(f->aux, aux); 
        }
        ITEM *it = pilha_desempilhar(f->principal); //sobra o último item na pilha 
        for (int i = 0; i < tam-1; i++){
            ITEM *aux2; 
            aux2 = pilha_desempilhar(f->aux); 
            pilha_empilhar(f->principal, aux2); 
        } 
        return it; 

    }
}
void fila_apagar(FILA **f){
    if (f != NULL){
        pilha_apagar(&(*f)->principal);
        pilha_apagar(&(*f)->aux); 
    }
    free(*f); 
    *f = NULL; 
}


ITEM *fila_frente(FILA *f){
    if (!fila_vazia(f)){
        ITEM *it; 
        it = pilha_topo(f->principal); 
        return it; 
    }
    return NULL; 
}


int fila_tamanho(FILA *f){
    if (f != NULL){
        return (pilha_tamanho(f->principal)); 
    }
}
bool fila_vazia(FILA *f){
    if (f != NULL){
        return (pilha_vazia(f->principal)) ? true : false; 
    }
    return false;   
}

bool fila_cheia(FILA *f){
    if (f != NULL){
        return (pilha_cheia(f->principal)) ? true : false; 
    }
    return false; 
}

void fila_imprimir (FILA *f){
    if (f != NULL){
        pilha_imprimir(f->principal); 
    }
    printf("\n"); 
}

