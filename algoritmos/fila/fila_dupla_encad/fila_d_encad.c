#include <stdio.h> 
#include <stdlib.h> 
#include "lista.h"

typedef struct no_{
    ITEM *item;
    NO *anterior;
    NO *proximo;
}NO; 

struct lista_{
    NO *inicio;
    NO *fim; 
    int tamanho; 
    bool ordenada;
};

LISTA *lista_criar(bool ordenada){
    LISTA *lista; 
    lista = (LISTA*) malloc(sizeof(LISTA)); 
    if(lista != NULL){
        lista->inicio = NULL;
        lista->fim = NULL; 
        lista->tamanho = 0;
        lista->ordenada = ordenada; 
    }
    return lista; 
}

void lista_esvazia(NO *ptr){
    if (ptr != NULL){
        if (ptr->proximo != NULL)
            lista_esvazia(ptr->proximo); 
        item_apagar(&ptr->item); 
        ptr->anterior = NULL;
        free(ptr); //apagar o no
        ptr = NULL; 
    }
}

bool lista_inserir(LISTA *lista, ITEM *item){

}

bool lista_inserir_fim(LISTA *lista, ITEM *item){
    //estamos inserindo no fim
    if (!lista_cheia(lista)){
        NO *no = (NO*) malloc(sizeof(NO)); 
        if (no != NULL){
            no->item = item;
            no->anterior = NULL;
            no->proximo = NULL; 
        }
        if (lista->tamanho == 0){
            lista->inicio = no; 
            lista->fim = no; 
            return true;
        }
        lista->fim->proximo = no; 
        no->anterior = lista->fim; 
        lista->fim = no; 
        lista->tamanho++; 
    }
    return false; 
}

bool lista_apagar(LISTA **lista){
    if (*lista != NULL){

    }

}


ITEM *lista_remover(LISTA *lista, int chave){ //falta arrumar 
    if (lista != NULL){
        NO *P;
        P = lista->inicio; 
        while(P != NULL && item_get_chave(P->item) != chave){
            P = P->proximo; 
        }
        if (P != NULL){
            P->anterior->proximo = P->proximo;
            ITEM *it = P->item; 
            free(P);
            return it; 
        }else{
            return NULL; 
        }
    }
}

ITEM *lista_busca(LISTA *lista, int chave);

int lista_tamanho(LISTA *lista){
    if (lista != NULL){
        return lista->tamanho; 
    }
}

bool lista_vazia(LISTA *lista){
    if (lista != NULL && lista->tamanho)
        return true;
    return false; 
}

bool lista_cheia(LISTA *lista){
    NO *no; 
    if ((no = malloc(sizeof(NO))) == NULL) 
        return false; 
    free(no);
    return true; 
}