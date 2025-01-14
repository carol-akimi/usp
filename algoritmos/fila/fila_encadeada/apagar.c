#include "item.h"
#include <stdio.h>
#include <stdlib.h>
#include "fila.h"


#ifndef _STRUCTS_
    #define _STRUCTS_

    typedef struct no_ {
    ITEM* item;
    struct no_* proximo;
    }noObj;
    typedef noObj NO;

    /*typedef struct fila_ {
    NO* inicio;
    NO* fim;
    int tamanho;
    }filaObj;

    typedef filaObj FILA;*/
#endif


void fila_apagar(FILA **f){
    if (fila_tamanho(*f) == 0){
        free(*f);
        *f = NULL; 
        return; 
    }
    free(fila_remover(*f));
    fila_apagar(f); 
}


void inverter(FILA *f){
    inverter(f->inicio); 
    NO *aux = f->inicio; 
    f->inicio = f->fim; 
    f->fim = aux; 
}

void inverter (NO **no){
    if (*no == NULL || (*no)->proximo == NULL){
        return; 
    }
    NO *n = (*no)->proximo; 
    inverter(&n);
    (*no)->proximo->proximo = (*no); 
    (*no)->proximo = NULL; 

     
}