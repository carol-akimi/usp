#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include "item.h"
#include "ab.h"

typedef struct no_ NO; 
struct no_{
    ITEM *item; 
    NO *esq; 
    NO *dir;
};

struct arv_bin {
    NO *raiz; 
    //int p; //profundidade 
};

AB *ab_criar(void){
    AB *r; 
    r = (AB*) malloc(sizeof(AB)); 
    if (r != NULL){
        r->raiz = NULL; 
        //r->p = -1; 
    }
    return r; 
}

NO *no_criar(ITEM *item){
    NO *n; 
    n = (NO*) malloc(sizeof(NO));
    if (n != NULL){
        n->item = item; 
    }
    return n; 
}

void no_inserir(NO *raiz, NO *no, int lado, int chave_pai){
    if (raiz != NULL){
        no_inserir(raiz->esq, no, lado, chave_pai);
        no_inserir(raiz->dir, no, lado, chave_pai);
        if (item_get_chave(raiz->item) == chave_pai){
            if (lado == 0)
                raiz->esq = no; 
            else if (lado == 1) 
                raiz->dir = no; 
        }
    }
    return; 
}


bool ab_inserir (AB *T, ITEM *item, int lado, int chave){
    NO *novo = no_criar(item); 
    if (T->raiz == NULL){ //nao tem nenhum elemento 
        T->raiz = novo; 
        //T->p++; 
        return true; 
    } else {
         no_inserir(T->raiz, novo, lado, chave); 
         return true; 
    }
    return false; 
}

void preOrdem (NO *raiz){
    if (raiz != NULL){
        int *num = (int*) item_get_dados(raiz->item); 
        printf("%d", *num); 
        preOrdem(raiz->esq); 
        preOrdem(raiz->dir); 
    }
}

void ab_imprimir (AB *T){
    if (T != NULL){
        preOrdem(T->raiz); 
    }
}

void no_apagar (NO **raiz){
    if (*raiz != NULL){
        no_apagar(&((*raiz)->esq)); 
        no_apagar(&((*raiz)->dir));
        item_apagar(&(*raiz)->item); 
        free(*raiz); 
        (*raiz) = NULL; 
    }
}

void ab_apagar_arvore(AB **T){
    if (*T != NULL){
        no_apagar(&((*T)->raiz)); 
        free(*T); 
        (*T) = NULL; 
    }
}

int no_filhos(NO *raiz){
    if (raiz != NULL){
        int qtd = 0; 
        if (raiz->esq != NULL)
            qtd++; 
        if (raiz->dir != NULL)
            qtd++; 
        if (qtd == 1){
            return 1; 
        }
        if (no_filhos(raiz->esq) || no_filhos(raiz->dir))
            return 1; 
        return 0; 
    }
}

int ab_estritamente_binaria (AB *T){ /*Essa função devolve 0 se a Árvore é estritamente binária e 1 caso contrário*/
    return no_filhos(T->raiz); 
} 

int no_checar(NO *raiz){
    if (raiz == NULL)
        return 0; 
    int item = item_get_chave(raiz->item);
    if (raiz->esq != NULL){
        int item_esq = item_get_chave(raiz->esq->item); 
        if (item_esq >= item)
            return 1;
    }
    if (raiz->dir != NULL){
        int item_dir =  item_get_chave(raiz->dir->item); 
        if (item_dir <= item) 
            return 1; 
    }
    if (no_checar(raiz->esq) || no_checar(raiz->dir)) 
        return 1; 

    return 0;
}

int ab_checar_busca (AB *T){
    return no_checar(T->raiz); 
}

int no_elementos(NO *no){
    if (no == NULL) return 0; 
    int e = no_elementos(no->esq);
    int d = no_elementos(no->dir);
    return e + d + 1; 
}

int ab_elementos(AB *T){
    if (T != NULL){
        no_elementos(T->raiz); 
    }
}