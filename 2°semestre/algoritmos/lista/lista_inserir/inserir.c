#include <stdio.h> 
#include <stdlib.h> 
#include "item.h"
#include "lista.h"

#ifndef STRUCTS_
    #define STRUCTS_
    struct lista_{ 

        ITEM *lista[TAM_MAX];

        int inicio; // pos do primeiro item

        int fim; // pos do próximo espaço vazio

        int tamanho;

    };
#endif

int lista_busca_ordenada(LISTA *lista, int chave); 

bool lista_inserir(LISTA *lista, ITEM *item){
    if (!lista_cheia(lista)){
        int chave = item_get_chave(item); //chave do item que vai ser inserido 
        int posicao = lista_busca_ordenada(lista, chave); //vai devolver a posicao que o elemento deve ser adicionado
        for (int i = lista->fim - 1; i >= posicao; i--){
            lista->lista[i+1] = lista->lista[i]; 
        }
        lista->lista[posicao] = item; 
        lista->fim++; 
        lista->tamanho++; 
        return true;
    }
    return false;
}

int lista_busca_ordenada(LISTA *lista, int chave){
    int inicio = lista->inicio;
    int fim = lista->fim - 1;
    int meio; 
    while (inicio <= fim){
        meio = (inicio + fim)/2;
        if (item_get_chave(lista->lista[meio]) == chave){
            return meio; 
        }
        else if (item_get_chave(lista->lista[meio]) > chave){
            fim = meio -1 ; 
        }
        else{
            inicio = meio + 1;
        }
    }
        return inicio;
}