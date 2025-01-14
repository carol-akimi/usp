#include <stdio.h>
#include <stdlib.h>
#define TAM_TABELA 11 

typedef struct {
    int kindex, pos;
} bloco_indice;

int criar_tabela_ind (bloco_indice tabela[], int vet[], int n, int n_tabela){
    for (int i = 0; i < n_tabela; i++){
        int pos = n/n_tabela*i; 
        tabela[i].kindex = vet[pos];  
        tabela[i].pos = pos; 
    }
}

int busca_indexada (bloco_indice tabela[], int vet[], int n, int n_tabela, int x){
    //verifica pelos elementos da tabela de indices 
    int i; 
    while (tabela[i].kindex <=  x)
        i++; 
    for (int j = tabela[i-1].pos; j < n; j++){
        if (vet[j] == x)
            return j; 
    }
    return -1; 
}

//hashing 

typedef struct h{
    int chave;
    int valor;
} hash_t; 

hash_t tabela[TAM_TABELA];

int h(int chave){
    return chave % TAM_TABELA; 
}

void inserir (int chave, int valor){
    int ind = h(chave); 
    for (int i = 1; i < TAM_TABELA; i++){
        //nao tem ninguem aqui 
        if (tabela[i].chave == -1 || tabela[i].chave == -2){
            tabela[i].chave = chave; 
            tabela[i].valor = valor; 
        }
        //overflow progressivo 
        else 
            ind = (ind +1) % TAM_TABELA; 
    }
}

void remover(int chave){
    int ind = h(chave); 
    for (int i = 1; i < TAM_TABELA; i++){
        if (tabela[i].chave != chave)
            ind = (ind + 1) % TAM_TABELA; 
        else if (tabela[i].chave == -1)
            break;
        else
            tabela[i].chave = -2; 
    }
}

int main(void){

}