#include <stdio.h> 
#include <stdlib.h> 
#include "../pilha_sequencial/Pilha.h"
#include "../item/item.h"
/*
Essa implementação de uma pilha encadeada, ela é formadaa por nós (item e aterior)
vantagens: não precisa informar o número de elementos da pilha em tempo de compilação 

*/
//typedef struct no_ NO; 
struct no_ {
    ITEM *item; 
    NO *anterior; 
};


struct pilha {
    NO *topo; 
    int tamanho; 
};

PILHA* pilha_criar(void){
    PILHA *p; 
    p = (PILHA*) malloc(sizeof(PILHA)); 
    if (p != NULL){
        p->topo = NULL; 
        p->tamanho = 0; 
    }
    return p; 
}

void pilha_apagar(PILHA** pilha){
    if (!pilha_vazia(*pilha)){
        while ((*pilha)->topo != NULL){
            NO *aux; 
            aux = (*pilha)->topo;
            (*pilha)->topo = (*pilha)->topo->anterior;
            item_apagar(&aux->item);  
            aux->anterior = NULL; 
            free(aux); 
            aux = NULL;  
        }
        free(*pilha); 
        *pilha = NULL; 
    }
}

bool pilha_vazia(PILHA* pilha){
    if (pilha != NULL)
        return (pilha->tamanho == 0 ? true : false);
    return false; 
}

bool pilha_cheia(PILHA* pilha){
    if (pilha != NULL){
        NO *no; 
        no = malloc(sizeof(NO)); 
        if (no == NULL)
            return true; 
        free(no); 
        return false; 
    }
}

int pilha_tamanho(PILHA* pilha){
    if (pilha != NULL)
        return pilha->tamanho; 
}

ITEM* pilha_topo(PILHA* pilha){
    if (!pilha_vazia(pilha))
        return pilha->topo->item; 
}

bool pilha_empilhar(PILHA* pilha, ITEM* item){
    if (!pilha_cheia(pilha)){
        NO *no; 
        no = (NO*) malloc(sizeof(NO)); 
        no->item = item; 
        no->anterior = pilha->topo; 
        pilha->topo = no; 
        pilha->tamanho++; 
        return true; 
    }
    return false; 
}

ITEM* pilha_desempilhar(PILHA* pilha){
    if (!pilha_vazia(pilha)){
        NO *aux; 
        aux = pilha->topo; 
        pilha->topo = pilha->topo->anterior; 
        aux->anterior = NULL; 
        ITEM *it = aux->item; 
        free(aux); 
        aux = NULL; 
        pilha->tamanho--; 
        return it; 
    }
    return NULL; 
}

void pilha_inverter(PILHA *p, NO **no){
    if (*no == NULL || (*no)->anterior == NULL){
        p->topo = (*no); 
        return ; 
    }
    NO *n = (*no)->anterior; 
    pilha_inverter(p, &n); 
    (*no)->anterior->anterior = (*no);
    (*no)->anterior = NULL; 
    (*no) = n; 
}

NO *pilha_no_topo(PILHA *p){
    if (!pilha_vazia(p)){
        return p->topo; 
    }
}

void pilha_imprimir(PILHA *pilha){
    PILHA *aux = pilha_criar();
    int tam = pilha->tamanho; 
    for (int i = 0; i < tam; i++){
        int *dado = item_get_dados((pilha_desempilhar(pilha))); 
        printf("%d \n", (*dado)); 
        pilha_empilhar(aux, item_criar(i, dado));
    }

    while (!pilha_vazia(aux)) {
        pilha_empilhar(pilha, pilha_desempilhar(aux));
    }
    pilha_apagar(&aux);  // Liberar memória da pilha auxiliar
}
