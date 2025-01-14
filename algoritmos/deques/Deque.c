#include <stdio.h> 
#include <stdlib.h> 
#include "Deque.h"
#define TAM 1005

struct deque_ {
    ITEM *deque[TAM];
    int inicio; 
    int fim; 
    int tamanho; 
};

DEQUE* deque_criar(void){
    DEQUE *d; 
    if ((d = (DEQUE*) malloc(sizeof(DEQUE))) != NULL){ //a alocacao deu certo
        d->inicio = 0; 
        d->fim = 0; 
        d->tamanho = 0; 
    }
    return d; 
}

void deque_apagar(DEQUE** deque){
    if (deque != NULL){
        for (int i = (*deque)->inicio; i == (*deque)->fim; (i++)%TAM){
                free((*deque)->deque[i]);
                (*deque)->deque[i] = NULL; 
        }
        free(*deque);
        *deque = NULL; 
    }
}

bool deque_inserir_inicio(DEQUE* deque, ITEM* item){
    if (!deque_cheia(deque)){
        deque->inicio = (deque->inicio -1 + TAM) % TAM;
        deque->deque[deque->inicio] = item;
        deque->tamanho++; 
        return true;
    }
    return false; 
}

bool deque_inserir_fim(DEQUE* deque, ITEM* item){
    if (!deque_cheia(deque)){
        deque->deque[deque->fim] = item;
        deque->fim = (deque->fim + 1) % TAM; 
        deque->tamanho++;
        return true;
    }
    return false; 
}

ITEM* deque_remover_inicio(DEQUE* deque){
    ITEM *it; 
    if (!deque_vazia(deque)){ //coloque em deque_vazia deque != NULL
        it = deque->deque[deque->inicio];
        deque->deque[deque->inicio] = NULL;
        deque->inicio = (deque->inicio+1) % TAM; 
        deque->tamanho--;  
        return it; 
    }
    return(NULL); 
}

ITEM* deque_remover_fim(DEQUE* deque){
    ITEM *it; 
    if (!deque_vazia(deque)){
        deque->fim = (deque->fim-1+TAM) % TAM; 
        it = deque->deque[deque->fim]; 
        deque->deque[deque->fim] = NULL; 
        deque->tamanho--; 
        return it; 
    }
    return NULL; 
}


ITEM* deque_primeiro(DEQUE* deque){
    if(deque != NULL){
        return deque->deque[deque->inicio]; 
    }
    return NULL;
}

ITEM* deque_ultimo(DEQUE* deque){
    if (deque != NULL){
        return deque->deque[(deque->fim - 1 +TAM) % TAM]; 
    }
    return NULL; 
}

int deque_contar(DEQUE* deque){
    if (deque != NULL){
        return deque->tamanho; 
    }
}

bool deque_vazia(DEQUE* deque){
    if (deque->tamanho == 0 && deque != NULL){
        return true; 
    }
    return false; 
}

bool deque_cheia(DEQUE* deque){
    if (deque->tamanho == TAM && deque != NULL){
        return true;
    }
    return false; 
}


