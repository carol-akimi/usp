#include <stdio.h>
#include <stdlib.h>
#include "lista.h"

typedef struct no_ NO; 
struct no_ {
    ITEM *item; 
    NO *proximo; 
};

struct lista_{
    NO *inicio; 
    NO *fim; 
    int tamanho; 
    bool ordenada; 
};

LISTA *lista_criar(bool ordenada){
    LISTA *lista;
    lista = (LISTA*) malloc(sizeof(LISTA)); 
    if (lista != NULL){
        lista->inicio = NULL; 
        lista->fim = NULL;
        lista->tamanho = 0; 
        lista->ordenada = ordenada; 
    }
    return lista; 
}


bool lista_inserir_ordenada(LISTA *lista, ITEM *item){
    NO *no;
    no = (NO*) malloc(sizeof(NO)); 
    no->item = item; 
    no->proximo = NULL; 
    if (lista->tamanho == 0){
        lista->inicio = no; 
        lista->fim = no; 
        lista->tamanho++; 
        return true;
    }else{
        int chave = item_get_chave(item); 
        //o item é menor que o inicio 
        if (item_get_chave(lista->inicio->item) >= chave){
            no->proximo = lista->inicio; 
            lista->inicio = no; 
            lista->tamanho++; 
            return true; 
        }
        NO *aux = lista->inicio; 
        for (int i = 1; i < lista->tamanho; i++){
            if (item_get_chave(aux->proximo->item) > chave){
                no->proximo = aux->proximo; 
                aux->proximo = no; 
                lista->tamanho++; 
                return true; 
            }else{
                aux = aux->proximo; 
            }
        }
        if (chave >= item_get_chave(lista->fim->item)){
            lista->fim->proximo = no; 
            lista->fim = no; 
            lista->tamanho++; 
            return true; 
        }
    }
    return false; 
}

bool lista_inserir_nao(LISTA *lista, ITEM *item){
    NO *no;
    no = (NO*) malloc(sizeof(NO)); 
    no->item = item; 
    no->proximo = NULL; 
    if (lista->tamanho == 0){
        lista->inicio = no; 
        lista->fim = no; 
        lista->tamanho++; 
        return true;
    }else{
        lista->fim->proximo = no; 
        lista->fim = no; 
        lista->tamanho++; 
        return true; 
    }
    return false; 

}

bool lista_inserir(LISTA *lista, ITEM *item){
    if (!lista_cheia(lista)){
        if (lista->ordenada == 0){
            return lista_inserir_nao(lista, item); 
        }else{
            return lista_inserir_ordenada(lista, item); 
        }
    }
    return false; 

}

bool lista_apagar(LISTA **lista){
    if (!lista_vazia(*lista)){
        for (int i = 0; i < (*lista)->tamanho; i++){
            NO *aux; 
            aux = (*lista)->inicio; 
            (*lista)->inicio = (*lista)->inicio->proximo; 
            item_apagar(&aux->item); 
            free(aux); 
            aux->proximo = NULL; 
            aux = NULL; 
        }
        free(*lista); 
        *lista = NULL; 
    }
}

ITEM *lista_remover(LISTA *lista, int chave){
    if (!lista_vazia(lista)){
        NO *aux, *p; 
        p = lista->inicio;
        aux = NULL;
        while (p != NULL && item_get_chave(p->item) != chave){
            aux = p; 
            p = p->proximo; 
        }
        if (p != NULL){
            if (p == lista->inicio){
            lista->inicio = p->proximo; 
            p->proximo = NULL; 
            }else{
                aux->proximo = p->proximo; 
                p->proximo = NULL; 
            }
            if (p == lista->fim){
                aux->proximo = NULL; 
                lista->fim = aux; 
            }
            ITEM *it = p->item; 
            free(p); 
            lista->tamanho--; 
            return it; 
        }
    }
    return NULL; 
}

ITEM *lista_busca(LISTA *lista, int chave){
    if (!lista_vazia(lista)){
        NO *aux; 
        aux = lista->inicio; 
        while (aux != NULL && item_get_chave(aux->item) != chave){
            aux = aux->proximo; 
        }
        if (item_get_chave(aux->item) == chave){
            return aux->item; 
        }
        //nao encontramos a chave 
        return NULL; 
    }

}

int lista_tamanho(LISTA *lista){
    if (!lista_vazia(lista))
        return lista->tamanho; 
}

bool lista_vazia(LISTA *lista){
    if (lista != NULL)
        return (lista->tamanho == 0 ? true : false);
    return false; 
}

bool lista_cheia(LISTA *lista){
    if (lista != NULL){
        NO *no; 
        if ((no = malloc(sizeof(NO))) != NULL){
            free(no);
            return false;
        }
        return true; 
    }
}
void lista_imprimir(LISTA *lista){
    if (!lista_vazia(lista)){
        NO *aux; 
        aux = lista->inicio; 
        while (aux != NULL){
            printf("%d " , item_get_chave(aux->item)); 
            printf("%d ", *(int*)item_get_dados(aux->item)); 
            aux = aux->proximo; 
            printf("\n"); 
        }
    }
}
