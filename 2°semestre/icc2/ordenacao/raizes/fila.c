#include <stdio.h> 
#include <stdlib.h> 
#include "fila.h"

typedef struct no_ NO; 

struct no_ {
    int item;
    NO *proximo;  
}; 

struct fila_enc {
    NO *inicio; //remove aqui 
    NO *fim; //acrescenta aqui 
    int tamanho; 
};

FILA *fila_criar(void){
    FILA *f;
    if(((f = (FILA*) malloc(sizeof(FILA)))!= NULL)){
        f->inicio = NULL; 
        f-> fim = NULL; 
        f->tamanho = 0;
    }
    return f; 
}

bool fila_inserir(FILA *f, int it){
    NO *no; 
    if (!fila_cheia(f)){
        if (f->tamanho == 0){ //situacao inicial, sem isso o inicio vai continuar apontando para NULL
            f->inicio = no;
        }
        no = (NO*)malloc(sizeof(NO)); 
        no->item = it; 
        no->proximo = NULL;
        f->fim->proximo = no;
        f->fim = no; 
        f->tamanho++; 
        return true;
    }
    return false; 
}

int fila_remover(FILA *f){
    NO *no; 
    if (!fila_vazia(f)){
        no = f->inicio; 
        f->inicio = f->inicio->proximo; 
        no->proximo = NULL; 
        f->tamanho--;
        return no->item;
    }
}

void fila_apagar(FILA **f){
    if(!fila_vazia(*f)){
        for (int i = 0; i < (*f)->tamanho; i++){
            fila_remover(*f); 
        }
        free(*f);
        (*f) = NULL; 
    } 
}

int fila_frente(FILA *f){
    if (f != NULL){
        return f->inicio->item;
    }
}

int fila_tamanho(FILA *f){
    if (f != NULL){
        return f->tamanho;
    }
}

bool fila_vazia(FILA *f){
    if(f == NULL && f->tamanho == 0){
        return true;
    }
    return false; 
}

bool fila_cheia(FILA *f){
    NO *no; 
    if (f == NULL || ((no = (NO*)malloc(sizeof(NO))) != NULL)){
        free(no); 
        return true;
    }
    return false;
}


