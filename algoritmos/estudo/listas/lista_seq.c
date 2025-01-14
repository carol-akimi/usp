#include <stdio.h> 
#include <stdlib.h> 
#include "lista_seq.h"

struct lista_{
    ITEM *item[TAM]; 
    int tamanho; 
    bool ordenada; 
};

LISTA *lista_criar(bool ordenada){

}

bool lista_inserir_posicao(LISTA *lista, ITEM *item, int posicao){
    if (!lista_cheia(lista)){
        for (int i = lista->tamanho; i > posicao; i--){
            lista->item[i] = lista->item[i-1]; 
        }
        lista->item[posicao] = item;
        lista->tamanho++; 
        return true;  
    }
    return false; 

}

bool lista_inserir_fim(LISTA *lista, ITEM *item){
    if (!lista_cheia(lista)){
        lista->item[lista->tamanho] = item; 
        lista->tamanho++; 
        return true; 
    }
    return false; 

}


bool lista_inserir(LISTA *lista, ITEM *item){
    if (!lista->ordenada){
        return lista_inserir_fim(lista, item); 
    }
    int x = lista_busca_ordenada(lista, item_get_chave(item)); 
    return lista_inserir_posicao(lista, item, x); 

}

ITEM *lista_remover_fim(LISTA *lista){
    if (!lista_vazia(lista)){
        ITEM *it; 
        it = lista->item[lista->tamanho-1]; 
        lista->item[lista->tamanho-1] = NULL; 
        lista->tamanho--; 
        return it; 
    }
    return NULL; 
}

ITEM *lista_remover_posicao(LISTA *lista, int posicao){
    if (!lista_vazia(lista)){
        ITEM *it = lista->item[posicao]; 
        for (int i = posicao; i < lista->tamanho - 1; i++){
            lista->item[i] = lista->item[i+1]; 
        }
        lista->tamanho--; 
        return it; 
    }
    return NULL; 
}


ITEM *lista_remover(LISTA *lista, int chave){
    if (!lista->ordenada){
        return lista_remover_fim(lista); 
    }
    int x = lista_busca_ordenada(lista, chave); 
    return lista_remover_posicao(lista, x); 
}

//devolve a posição de onde esse item com essa chave deve ser inserido
int lista_busca_ordenada(LISTA *lista, int chave){
    if (!lista_vazia(lista)){
        int ini = 0; 
        int fim = lista->tamanho - 1;
        while (ini <= fim){
            int meio = (ini+fim)/2; 
            if (lista->item[meio] == chave){
                return meio; 
            }    
            else if (lista->item[meio] < chave){
                ini = meio + 1; 
            }else{
                fim = meio; 
            }
        }
    }
}

/*
outro jeito 
int i; 
while (i <= lista->tamanho && chave != item_get_chave(lista->item[i])){
    if (item_get_chave(lista->item[i]) > chave){
        printf("Item não encontrado\n"); 
        return -1; 
    }
    i++; 
}
return i; 
*/

ITEM *lista_busca(LISTA *lista, int chave){

}

bool lista_apagar(LISTA **lista){

}

int lista_tamanho(LISTA *lista);
bool lista_vazia(LISTA *lista);
bool lista_cheia(LISTA *lista);
void lista_imprimir(LISTA *lista);