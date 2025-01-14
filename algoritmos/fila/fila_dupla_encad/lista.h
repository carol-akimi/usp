#ifndef FILA_H
    #define FILA_H
    #include "item.h"
    #include <stdbool.h>
    #define inicial 0
    #define ERRO -32000
    #define ORDENADA 0 /*0 = lista não ordenada; 1 = lista ordenada*/

    typedef struct lista_ LISTA; 
    LISTA *lista_criar(bool ordenada);
    void lista_esvazia(NO *ptr);
    bool lista_inserir(LISTA *lista, ITEM *item);
    bool lista_apagar(LISTA **lista);
    ITEM *lista_remover(LISTA *lista, int chave);
    ITEM *lista_busca(LISTA *lista, int chave);
    int lista_tamanho(LISTA *lista);
    bool lista_vazia(LISTA *lista);
    bool lista_cheia(LISTA *lista);
    //void lista_imprimir(LISTA *lista);

#endif