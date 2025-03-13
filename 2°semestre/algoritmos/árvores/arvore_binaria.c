#include <stdio.h>
#include <stdlib.h>
#include "arvore_binaria.h"

typedef struct no NO;
struct no{
    ITEM *item; 
    NO *esq;
    NO *dir;  
}; 

struct arv_bin{
    NO *raiz; 
    int p; //profundidade 
};

void preOrdem(NO *raiz){
    if (raiz != NULL){
        printf("%d", item_get_dados(raiz->item)); 
        preordem(raiz->esq);
        preordem(raiz->dir); 
    }
}

void emOrdem(NO *raiz){
    if (raiz != NULL){
        preordem(raiz->esq);
        printf("%d", item_get_dados(raiz->item)); 
        preordem(raiz->dir); 
    }
}

void posOrdem(NO *raiz){
    if (raiz != NULL){
        preordem(raiz->esq);
        preordem(raiz->dir); 
        printf("%d", item_get_dados(raiz->item)); 
    }
}

AB *ab_criar(void){
    AB *r = (AB*)malloc(sizeof(AB));
    if (r != NULL){
        r->raiz = NULL; 
        r->p = -1; 
    }
    return (r); 
}

void ab_insercao(NO *raiz, int dado, int lado, int chave_pai){
    
}
