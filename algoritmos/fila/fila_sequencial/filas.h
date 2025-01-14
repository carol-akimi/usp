#ifndef _FILAS_H
    #define _FILAS_H
    #include "../item/item.h"
    #include <stdbool.h>

    #define TAM 100
    typedef struct fila_ FILA;
    FILA *fila_criar(void);
    bool fila_inserir(FILA *fila, ITEM *item);
    ITEM *fila_remover(FILA *fila);
    void fila_apagar(FILA **fila); 
    int fila_tamanho(FILA *fila);
    ITEM *fila_frente(FILA *fila);
    bool fila_vazia(FILA *fila);
    bool fila_cheia(FILA *fila);

#endif
