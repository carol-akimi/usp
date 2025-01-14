#ifndef FILA_H
    #define FILA_H
    #include <stdbool.h>

    typedef struct fila_enc FILA; 
    FILA *fila_criar(void);
    bool fila_inserir(FILA *f, int it);
    int fila_remover(FILA *f);
    void fila_apagar(FILA **f);
    int fila_frente(FILA *f); 
    int fila_tamanho(FILA *f);
    bool fila_vazia(FILA *f);
    bool fila_cheia(FILA *f);

#endif