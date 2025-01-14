#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct no NO;
struct no{
    int dado; 
    NO *esq;
    NO * dir; 
    int altura; 
};


int main(void){

}

//T->raiz = no_insercao
NO *no_insercao(NO *raiz, NO *no){
    if (raiz == NULL){
        raiz = no; 
    }
    else if (no->dado > raiz->dado){
        raiz->dir = no_insercao(raiz->dir, no);
    }
    else if (no->dado < raiz->dado){
        raiz->esq = no_insercao(raiz->esq, no); 
    }
    return raiz; 
}

