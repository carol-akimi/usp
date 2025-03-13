#include <stdio.h>
#include <stdlib.h> 
#include "avl.h"
#include "../../item/item.h"

typedef struct no_ NO; 
struct no_{
    ITEM *item; 
    NO *esq; 
    NO *dir; 
    int FB; 
};

struct avl_ {
    NO *raiz; 
}; 

AVL *avl_criar(void){
    AVL *avl = (AVL*) malloc(sizeof(AVL)); 
    if (avl != NULL)
        avl->raiz = NULL; 
    return avl; 
}

NO *no_criar(ITEM *item){
    NO *n; 
    n = (NO*) malloc(sizeof(NO));
    if (n != NULL){
        n->item = item; 
    }
    return n; 
}

//A vira filho direito de B 
NO *rot_dir(NO *A){
    NO *B = A->esq; 
    A->esq = B->dir;
    B->dir = A;

    A->FB = B->FB = 0;

    return B;

}

//A vira filho esquerdo de B 
NO *rot_esq(NO *A){
    NO *B = A->dir; 
    A->dir = B->esq;
    B->esq = A;

    A->FB = B->FB = 0;

    return B;

}

NO *rot_esq_dir(NO *A){
    A->esq = rot_esq(A->esq);
    return(rot_dir(A));

}

NO *rot_dir_esq(NO *A){
    A->dir = rot_dir(A->dir);
    return(rot_esq(A));

}
/*69*/