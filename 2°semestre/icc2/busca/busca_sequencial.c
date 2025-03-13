#include <stdio.h> 
#include <stdlib.h> 

typedef struct {
    int kindex, pos;
} bloco_indice;

void cria_indice(bloco_indice indice[], int tam_indice, int v[], int n); 
int busca_sequencial_indexada(int v[], int n, bloco_indice indice[], int tam_indice, int x); 

typedef struct{
    int dado; 
    NO *proximo; 
}NO;

int main(void){



}

void cria_indice(bloco_indice indice[], int tam_indice, int v[], int n){
    int pos, i = 0; 
    while (i < tam_indice){
        pos = i*n / tam_indice; 
        indice[i].kindex = v[pos];
        indice[i].pos = pos; 
        i++;  
    }
}

int busca_sequencial_indexada(int v[], int n, bloco_indice indice[], int tam_indice, int x){
    //busca no indice primario 
    int i; 
    for (i = 0; i < tam_indice && indice[i].kindex <= x; i++); 

    //busca na tabela 
    i = indice[i-1].pos; 
    while ((i < n) && v[i] < x)
        i++; 
    
    //verifica se achou 
    if ((i < n) && v[i] == x)
        return i; 
    return -1; 
}

int busca_sequencial_sentinela(int vet[], int n, int x){
    int sentinela[n+1]; 
    for (int i = 0; i < n; i++){
        sentinela[i] = vet[i]; 
    }
    sentinela[n] = x; 
    int i; 
    for (i = 0; sentinela[i] != x; i++);
    if (i < n) 
        return i;
    else   
        return -1;  
}

int busca_encadeada(NO *no, int x){
    if (no != NULL && no->dado != x)
        busca_encadeada(no->proximo, x); 
    if (no == NULL) //nao encontrou o elemento 
        return -1; 
    else //encontrou o elemento 
        return no->dado; 
}

int mover_para_frente(int vet[], int n, int x){
    for (int i = 0; i < n; i++){
        //troca com o elemento da primeira posição 
        if (vet[i] == x){
            int aux = vet[i];
            vet[i] = vet[0]; 
            vet[0] = aux; 
            return i; 
        }
    }
    return -1; 
}

int transposicao(int vet[], int n, int x){
    for (int i = 0; i < n; i++){
        //troca com o elemento da posição anterior 
        if (vet[i] == x){
            int aux = vet[i-1];
            vet[i-1] = vet[i]; 
            vet[i] = aux; 
            return i; 
        }
    }
    return -1; 
}

