#ifndef RBT_
    #define RBT_
    #include <stdbool.h>

    typedef struct rbt RBT; 

    RBT *rbt_criar(void);
    void rbt_apagar(RBT **A);
    bool rbt_inserir(RBT *A, int chave);
    bool rbt_remover(RBT *A, int chave);
    bool rbt_busca(RBT *A, int chave); 
    bool rbt_imprimir(RBT *A);

#endif 