#include <stdio.h> 
#include <stdlib.h> 
#include "lista.h"
#include "../item/item.h"

struct lista_{
    ITEM *lista[TAM_MAX];
    int inicio; 
    int fim; 
    int tamanho; 
    int ordenada; 
};

LISTA *lista_criar(bool ordenada){
    LISTA *l; 
    if ((l = (LISTA*)malloc(sizeof(LISTA))) != NULL){
        l->inicio = 0; 
        l->fim = 0;
        l->tamanho = 0; 
        l->ordenada = ordenada; 
    }
    return l; 
}

bool lista_inserir(LISTA *lista, ITEM *item){
    if (!lista->ordenada){
        return lista_inserir_fim(lista, item); 
    }
    int x = lista_busca_ordenada(lista, item_get_chave(item)); 
    return (lista_inserir_posicao(lista, x, item)); 
}

//essa funcao nao aparece no tad
bool lista_inserir_fim(LISTA *lista, ITEM *item){ //apenas para listas nao ordenadas 
    if (!lista_cheia(lista) && !lista->ordenada){
        lista->lista[lista->fim] = item; 
        lista->fim++; 
        lista->tamanho++; 
        return true;
    }
    return false; 
}

bool lista_inserir_posicao(LISTA *lista, int posicao, ITEM *item){ //normalmente para listas ordenadas
    if (!lista_cheia(lista) && posicao <= lista->fim - 1){
        for (int i = (lista->fim-1); i >= posicao; i--){
            lista->lista[i+1] = lista->lista[i]; 
        }
        lista->lista[posicao] = item; 
        lista->fim++; 
        lista->tamanho++;
        return true; 
    }
    return false; 
}

bool lista_apagar(LISTA **lista){
    if (*lista != NULL){
        for (int i = 0; i < (*lista)->tamanho; i++){
            free((*lista)->lista[i]); 
            (*lista)->lista[i] = NULL;
        }
        free(*lista);
        *lista = NULL; 
        return true;
    }
    return false; 
}

ITEM *lista_remover(LISTA *lista, int chave){
    if (!lista->ordenada){
        return lista_remover_fim(lista); 
    }
    return lista_remover_posicao(lista, chave); 
}

ITEM *lista_remover_fim(LISTA *lista){
    if(!lista_vazia){
        ITEM *it;
        it = lista->lista[lista->fim-1]; 
        free(lista->lista[lista->fim-1]); 
        return it; 
    }
    return NULL; 
}

ITEM *lista_remover_posicao(LISTA *lista, int chave){
    if (!lista_vazia(lista)){
        int indice = lista_busca_ordenada(lista, chave); //essa é a posicao do elemento 
        ITEM *it; 
        it = lista->lista[indice];
        for (int i = indice; i < lista->fim; i++){
            lista->lista[i] = lista->lista[i+1]; 
        }
        return it; 
    }
    return NULL;
}

ITEM *lista_busca(LISTA *lista, int chave){
    if(!lista->ordenada){
        return lista->lista[lista_busca_nao_ordenada(lista, chave)]; 
    }
    return lista->lista[lista_busca_ordenada(lista, chave)]; 
}

//pior caso O(n)
int lista_busca_nao_ordenada(LISTA *lista, int chave){
    if (!lista_vazia(lista)){
        for(int i = 0; i < lista->tamanho; i++){
            if (item_get_chave(lista->lista[i]) == chave){
                return i; //retornando um indice
            }
        }
        return ERRO; 
    }
}

int lista_busca_ordenada(LISTA *lista, int chave){ 
    int inicio = lista->inicio; 
    int fim = lista->fim-1; 
    int meio;
    while (inicio <= fim){
        meio = (inicio + fim) / 2; 
        if (item_get_chave(lista->lista[meio]) == chave){
            return meio; 
        }
        else if (item_get_chave(lista->lista[meio]) > chave){
            fim = meio; 
        }
        else{
            inicio = meio + 1; 
        }
    }
    /* outro jeito
    if (!lista_vazia(lista)){
        while(item_get_chave(lista->lista[i]) < x){
            i++;
            if (i >= lista->fim)
                break;         
        }
    }
    return i;
    */
}

int lista_tamanho(LISTA *lista){
    if (lista != NULL){
        return lista->tamanho; 
    }
}
bool lista_vazia(LISTA *lista){
    if (lista != NULL && lista->tamanho == 0){
        return true;
    }
    return false; 
}
bool lista_cheia(LISTA *lista){
    if (lista != NULL && lista->tamanho >= TAM_MAX){
        return true;
    }
    return false; 
}