#include <stdio.h> 
#include <stdlib.h> 
#include "rbt.h"

// Definição da struct nó 
typedef struct no NO;
struct no{
    int dado; 
    NO *esq;
    NO * dir; 
    int cor; // 0-preto 1-vermelho 
};

// Definição da struct rbt 
struct rbt{
    NO *raiz;
};

void no_apagar(NO *raiz);
bool no_imprimir(NO *raiz);
NO *no_criar (int dado);
int max(int a, int b);
NO *no_inserir(NO *raiz, NO *no);
NO *rot_dir(NO *a);
NO *rot_esq(NO *a);
void inverte(NO *r);
NO *no_remover(NO *h, int chave); 
NO *min(NO *h);
NO *delete_min(NO *h);
NO *moveRedleft(NO *h);
NO *moveRedright(NO *h);
bool no_busca(NO *raiz, int dado); 
RBT *no_copia(NO *raiz, RBT *A);

// Função que cria uma árvore do tipo RBT 
RBT *rbt_criar(void){
    RBT *A; 
    A = (RBT*) malloc(sizeof(RBT)); 
    if (A != NULL){
        A->raiz = NULL; // inicializa a raiz com NULL
    }
    return A; 
}

// Função que apaga, recursivamente, uma árvore RBT 
void rbt_apagar(RBT **A){
    no_apagar((*A)->raiz); 
    free(*A);
    *A = NULL; 
}

// Função que apaga, recursivamente, os nós da árvore 
void no_apagar(NO *raiz){
    if (raiz != NULL){
        no_apagar(raiz->esq);
        no_apagar(raiz->dir);
        free(raiz);
        raiz = NULL; 
    }
}

// Função que realiza a inserção de um nó 
bool rbt_inserir(RBT *A, int dado){
    if(A != NULL){
        // Cria o nó 
        NO *no;
        no = no_criar(dado);
        // Insere o nó 
        A->raiz = no_inserir(A->raiz, no);
        return true;
    }
    return false; 
}

// Função que cria o nó com o dado fornecido
NO *no_criar (int dado){
    NO *no;
    no = (NO*) malloc(sizeof(NO));
    if (no != NULL){
        no->dado = dado;
        no->esq = NULL;
        no->dir = NULL; 
        no->cor = 1; // o nó inserido tem cor vermelha 
    }
    return no; 
}

int vermelho(NO *no){
    if (no == NULL)
        return 0; 
    return (no->cor == 1); 
}

// Função que insere o nó 
NO *no_inserir(NO *raiz, NO *no){
    if (raiz == NULL)
        raiz = no; 
    if (raiz->dado < no->dado)
        raiz->dir = no_inserir(raiz->dir, no);
    else if (raiz->dado > no->dado)
        raiz->esq = no_inserir(raiz->esq, no);
    
    if (vermelho(raiz->dir) && !vermelho(raiz->esq))
        raiz = rot_esq(raiz); 
    if (vermelho(raiz->esq) && vermelho(raiz->esq->esq))
        raiz = rot_dir(raiz);
    if (vermelho(raiz->esq) && vermelho(raiz->dir)) // os dois filhos são vermelhor
        inverte(raiz);
    
    return raiz;    
}

// Função que realiza uma rotação direita no nó dado
NO *rot_dir(NO *c){
    NO *b = c->esq; 
    c->esq = b->dir;
    b->dir = c; 
    b->cor = c->cor; 
    c->cor = 1;
    return b; 
}

// Função que realiza uma rotação esquerda no nó dado
NO *rot_esq(NO *a){
    NO *b = a->dir; 
    a->dir = b->esq;
    b->esq = a; 
    b->cor = a->cor; 
    a->cor = 1; 
    return b; 
}

// Função que inverte as cores 
void inverte(NO *r){
    r->cor = !r->cor; 
    if (r->esq)
        r->esq->cor = !r->esq->cor; 
    if (r->dir)
        r->dir->cor = !r->dir->cor; 
}

// Função que realiza uma remoção do nó com o dado
bool rbt_remover(RBT *A, int dado){
    if (A != NULL){
        if (no_remover(A->raiz, dado) != NULL)
            return true; 
    }
    return false; 
}

// Função que remove o nó 
NO *no_remover(NO *h, int chave){
    if (h == NULL)
        return NULL;
    if (h->dado > chave){
        if ((!vermelho(h->esq)) && !vermelho(h->esq->esq))
            h = moveRedleft(h);
        h->esq = no_remover(h->esq, chave); 
    } else {
        if (vermelho(h->esq))
            h = rot_dir(h); 
        if (h->dado == chave && h->dir == NULL){ // o nó é uma folha 
            free(h); 
            return NULL; 
        }
        if (!vermelho(h->dir) && !(vermelho(h->dir->esq)))
            h = moveRedright(h); 
        if (h->dado == chave){ // o nó tem dois filhos 
            NO *m = min(h->dir);
            h->dado = m->dado; 
            h->dir = delete_min(h->dir);  
        } else {
            h->dir = no_remover(h->dir, chave); 
        }
    }
    // Após a remoção, verifica se alguma rotação é necessária 

    if (vermelho((h)->esq) && vermelho((h)->dir)) // os dois filhos são vermelhos
        inverte(h);
    if (vermelho((h)->esq) && vermelho((h)->esq->esq))
        (h) = rot_dir(h);
    if (vermelho((h)->dir) && !vermelho((h)->esq))
        (h) = rot_esq(h); 
    
    return h; 
}

NO *min(NO *h){
    if (h->esq != NULL)
        min(h->esq);
    return h; 
}

NO *delete_min(NO *h){
    if (h->esq == NULL){
        free(h);
        return NULL; 
    }
    if (!vermelho(h->esq) && !vermelho(h->esq->esq))
        h = moveRedleft(h); 
    h->esq = delete_min(h->esq);
    return h; 
}

NO *moveRedleft(NO *h){
    inverte(h);
    if (vermelho(h->dir->esq)){
        h->dir = rot_dir(h->dir); 
        h = rot_esq(h); 
        inverte(h); 
    }
}

NO *moveRedright(NO *h){
    inverte(h); 
    if (vermelho(h->esq->esq)){
        h = rot_dir(h);
        inverte(h); 
    }
}

// Função que imprime a RBT em-ordem
bool rbt_imprimir(RBT *A){
    if (no_imprimir(A->raiz)){
        printf("\n");
        return true;  
    } 
    return false;
}

// Função que passa pelos nós e imprime seus dados em ordem
bool no_imprimir(NO *raiz){
    if (raiz != NULL){
        no_imprimir(raiz->esq);
        printf("%d ", raiz->dado);
        no_imprimir(raiz->dir);
        return true; 
    }
    return false;
}

// Função que faz a busca de um dado em uma RBT 
bool rbt_busca(RBT *A, int dado){
    return no_busca(A->raiz, dado); 
}

// Função que faz a busca pelos nós 
bool no_busca(NO *raiz, int dado){
    if (raiz == NULL)
        return false;
    if (raiz->dado == dado)
        return true; 
    
    if (dado > raiz->dado)
        return no_busca(raiz->dir, dado);
    else 
        return no_busca(raiz->esq, dado);
}
