#ifndef PILHA_H
    #define PILHA_H
    #include "../../item/item.h"
    #include <stdbool.h>

    typedef struct pilha_ PILHA; 
    #define TAM 100

    PILHA *pilha_criar(void);
    void pilha_apagar(PILHA **pilha);
    bool pilha_vazia(PILHA *pilha);
    bool pilha_cheia(PILHA *pilha);
    int pilha_tamanho(PILHA *pilha);
    ITEM *pilha_topo(PILHA *pilha);
    bool pilha_empilhar(PILHA *pilha, ITEM *item);
    ITEM *pilha_desempilhar(PILHA *pilha);
    //void pilha_print(PILHA *p);
    //void pilha_inverter(PILHA *p);

#endif