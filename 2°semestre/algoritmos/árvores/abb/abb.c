#include <stdio.h>
#include <stdlib.h>
#include "abb.h"
#include "item.h"

typedef struct no_ NO; 
struct no_{
    ITEM *item; 
    NO *esq; 
    NO *dir;
};

struct abb {
    NO *raiz; 
};

NO *no_criar(ITEM *item);
NO *no_inserir(NO *raiz, NO *no);
void no_inserir_2(NO **raiz, NO *no);
void no_imprimir (NO *raiz);
void no_apagar(NO **raiz);
bool no_remover(NO **raiz, int chave);
void troca_max_esq(NO *troca, NO *raiz, NO *ant);
ITEM *no_busca(NO *raiz, int chave);
bool no_perfeitamente_balanceada(NO *no);
void no_inserir_ite(NO **raiz, NO *no);
void inserir_iterativo(NO** raiz, NO *no);

NO *no_criar(ITEM *item){
    NO *n; 
    n = (NO*) malloc(sizeof(NO));
    if (n != NULL){
        n->item = item; 
        n->esq = NULL;
        n->dir = NULL; 
    }
    return n; 
}

ABB *abb_criar (void){
    ABB *T; 
    T = (ABB*) malloc(sizeof(ABB)); 
    if (T != NULL){
        T->raiz = NULL; 
    }
    return T; 
}

bool abb_inserir (ABB *T, ITEM *item){
    if (T == NULL){ //a árvore não existe 
        return false;
    }
    NO *no = no_criar(item); 
    if (no != NULL){
        //T-> raiz = no_inserir(T->raiz, no); 
        inserir_iterativo(&(T->raiz), no); 
        return true;
    }
    return false;
}

NO *no_inserir(NO *raiz, NO *no){
    if (raiz == NULL)
        raiz = no;
    else if (item_get_chave(raiz->item) > item_get_chave(no->item))
        raiz->esq = no_inserir(raiz->esq, no); 
    else if (item_get_chave(raiz->item) < item_get_chave(no->item))
        raiz->dir = no_inserir(raiz->dir, no); 
    return raiz; 
}

//versão que retorna void 
void no_inserir_2(NO **raiz, NO *no){
    if (*raiz == NULL){
        *raiz = no; 
    }
    else if (item_get_chave(no->item) < item_get_chave((*raiz)->item)){
        no_inserir_2(&(*raiz)->esq, no); 
    }
    else if (item_get_chave(no->item) > item_get_chave((*raiz)->item)){
        no_inserir_2(&(*raiz)->dir, no); 
    }
}
/*
void no_inserir_ite(NO **raiz, NO *no){
    NO **atual = raiz; 
    while(*atual != NULL){
        if (item_get_chave(no->item) > item_get_chave((*atual)->item))
            *atual = (*atual)->dir;
        if (item_get_chave(no->item) < item_get_chave((*atual)->item))
            *atual = (*atual)->esq;
    }
    *atual = no; 
}*/

void inserir_iterativo(NO** raiz, NO *no) {

    // Caso a árvore esteja vazia, o novo nó se torna a raiz
    if (*raiz == NULL) {
        *raiz = no;
        return;
    }

    NO* atual = *raiz;
    NO* anterior = NULL;

    // Percorre a árvore até encontrar a posição correta para inserir
    while (atual != NULL) {
        anterior = atual;

        if (item_get_chave(no->item) < item_get_chave(atual->item)) {
            atual = atual->esq;
        } else if (item_get_chave(no->item) > item_get_chave(atual->item)) {
            atual = atual->dir;
        } else {
            // item_get_chave(no->item) já existe na árvore, não é inserido novamente
            free(no);
            return;
        }
    }

    // Insere o no nó como filho do nó encontrado
    if (item_get_chave(no->item) < item_get_chave(anterior->item)) {
        anterior->esq = no;
    } else {
        anterior->dir = no;
    }
}

void abb_imprimir (ABB *T){
    if (T != NULL){
        no_imprimir(T->raiz); 
    }
}

void no_imprimir (NO *raiz){
    if (raiz == NULL){
        return; 
    }
    if (raiz != NULL){
        no_imprimir(raiz->esq); 
        no_imprimir(raiz->dir);
        printf("%d ", item_get_chave(raiz->item)); 
    }
}


void no_apagar(NO **raiz){
    if (*raiz != NULL){
        no_apagar(&(*raiz)->esq); 
        no_apagar(&(*raiz)->dir);
        item_apagar(&(*raiz)->item); 
        free(*raiz); 
        *raiz = NULL;  
    }
}

void abb_apagar (ABB **T){
    no_apagar(&(*T)->raiz); 
    free(*T); 
    *T = NULL; 
}

bool abb_remover(ABB *T, int chave){
    if (T != NULL)
        return no_remover(&(T->raiz), chave);
    return false;
}  

bool no_remover(NO **raiz, int chave){
    NO *p;
    if (*raiz == NULL)
        return false;
    if (item_get_chave((*raiz)->item) == chave){
        //Caso 1 e 2 (sem filhos e com apenas um filho)
        if ((*raiz)->dir == NULL || (*raiz)->esq == NULL){
            p = *raiz; 
            if ((*raiz)->esq == NULL)
                *raiz = (*raiz)->dir; 
            else   
                *raiz = (*raiz)->esq; 
            item_apagar(&(p->item)); 
            free(p); 
            p = NULL; 
        } 
        //Caso 3 (tem duas sub-árvores)
        else{
            troca_max_esq ((*raiz)->esq, *raiz, *raiz); 
        }
        return true; 
    }
    else{
        if (item_get_chave((*raiz)->item) < chave)
            return no_remover(&(*raiz)->dir, chave);
        else 
            return no_remover(&(*raiz)->esq, chave);
    }
}
/*
Teriamos duas opções aqui, optamos pela 1 
1) trocar o nó a ser retirado com o maximo da sub-árvore esquerda 
2) trocar o nó com o mínimo da sub-árvore direita 
*/
void troca_max_esq(NO *troca, NO *raiz, NO *ant){
    if (troca->dir != NULL){
        troca_max_esq(troca->dir, raiz, troca); 
        return; 
    }
    if (raiz == ant)
        ant->esq = troca->esq; 
    else 
        ant->dir = troca->esq;
    item_apagar(&(raiz->item));  
    raiz->item = troca->item; 
    free(troca); 
    troca = NULL; 
}

ITEM *abb_busca(ABB *T, int chave){
    return no_busca(T->raiz, chave); 
}

ITEM *no_busca(NO *raiz, int chave){
    if (raiz == NULL)  // nao encontrou a chave 
        return NULL; 
    if (item_get_chave(raiz->item) == chave)
        return raiz->item; 
    if (chave < item_get_chave(raiz->item))
        return no_busca(raiz->esq, chave); 
    else 
        return no_busca(raiz->esq, chave); 
}


bool abb_vazia(ABB *T){
    if (T->raiz == NULL)
        return true; 
    return false;
}


//retorna a altura de determinado nó 
int no_altura(NO *no){
    if (no == NULL)
        return -1; 
    int e = no_altura(no->esq); 
    int d = no_altura(no->dir); 
    //retorna o maior caminho + 1
    return ((e > d) ? e : d) + 1; 
}

bool abb_perfeitamente_balanceada(ABB *T){ /*Essa função devolve 0 se a Árvore é perfeitamente balanceada e 1 caso contrário*/
    return no_perfeitamente_balanceada(T->raiz); 
}

int mod(int n){
    if (n < 0)
        return -n; 
    else
        return n;
}

bool no_perfeitamente_balanceada(NO *no){
    if (no == NULL)
        return true; 

    int d = no_altura(no->dir); 
    int e = no_altura(no->esq);  
    if (mod(d - e) > 1) 
        return false; 
    return no_perfeitamente_balanceada(no->esq) && no_perfeitamente_balanceada(no->dir);
    
    
}






