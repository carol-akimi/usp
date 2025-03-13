#ifndef _PILHA_H
    #define _PILHA_H

    #include "../item/item.h"
    #include <stdbool.h>

    #define TAM 1005

    typedef struct pilha PILHA;
    typedef struct no_ NO; 

    PILHA* pilha_criar(void);
    void pilha_apagar(PILHA** pilha);
    bool pilha_vazia(PILHA* pilha);
    bool pilha_cheia(PILHA* pilha);
    int pilha_tamanho(PILHA* pilha);
    ITEM* pilha_topo(PILHA* pilha);
    bool pilha_empilhar(PILHA* pilha, ITEM* item);
    ITEM* pilha_desempilhar(PILHA* pilha);
    void pilha_inverter(PILHA *p, NO **no);
    void pilha_imprimir(PILHA *pilha); 
    NO *pilha_no_topo(PILHA *p);

#endif 