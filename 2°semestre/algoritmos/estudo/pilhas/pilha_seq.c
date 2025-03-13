#include <stdio.h>
#include <stdlib.h>
#include "pilha_seq.h"
#include "../../item/item.h"

struct pilha_{
    ITEM *pilha[TAM]; 
    int tamanho; 
};

PILHA *pilha_criar(void){
    PILHA *p; 
    p = (PILHA*) malloc(sizeof(PILHA)); 
    if (p != NULL){
        p->tamanho = 0; 
    }
    return p; 
}

void pilha_apagar(PILHA **pilha){
    if (pilha != NULL){
        for (int i = 0; i < (*pilha)->tamanho; i++){
            free((*pilha)->pilha[i]); 
            (*pilha)->pilha[i] = NULL; 
        }
        free(*pilha); 
        *pilha = NULL; 
    }
}

bool pilha_vazia(PILHA *pilha){
    if (pilha != NULL)
        return ((pilha->tamanho == 0) ? true : false); 
    return false; 
}

bool pilha_cheia(PILHA *pilha){
    if (pilha != NULL)
        return ((pilha->tamanho >= TAM ? true : false)); 
    return false; 
}

int pilha_tamanho(PILHA *pilha){
    if (pilha != NULL)
        return pilha->tamanho; 
}

ITEM *pilha_topo(PILHA *pilha){
    if (pilha != NULL)
        return pilha->pilha[(pilha->tamanho)-1]; 
}

bool pilha_empilhar(PILHA *pilha, ITEM *item){
    if (!pilha_cheia(pilha)){
        pilha->pilha[pilha->tamanho] = item;
        pilha->tamanho++;
        return true; 
    }
    return false; 
}

ITEM *pilha_desempilhar(PILHA *pilha){
    if (pilha != NULL && !pilha_vazia(pilha)){
        ITEM *it; 
        it = pilha->pilha[(pilha->tamanho)-1]; //ou it = pilha_topo(pilha);
        //item_apagar(pilha->pilha[(pilha->tamanho)-1]); 
        pilha->pilha[(pilha->tamanho)-1] = NULL; 
        pilha->tamanho--; 
        return it; 
    }
    return NULL; 

}

void pilha_imprimir (PILHA *pilha){
    for (int i = 0; i < pilha->tamanho; i++){
        int *dados; 
        dados = item_get_dados(pilha->pilha[i]); 
        printf("%d", *dados); 
    }
}