#include <stdio.h> 
#include <stdlib.h> 

#define TAM_TABELA 11 

typedef struct h{
    int chave;
    int valor;
} hash_t; 

hash_t tabela[TAM_TABELA];

int h(int chave){
    return chave % TAM_TABELA; 
}

void inserir(int chave, int valor){
    int ind = h(chave); 
    for (int i = 1; i < TAM_TABELA; i++){
        //-2 é colocado quando retiramos um elemento 
        if (tabela[ind].chave == -1 || tabela[ind].chave == -2){
            tabela[ind].chave = chave; 
            tabela[ind].valor = valor; 
        } else{
            ind = (ind + 1) % TAM_TABELA; 
        }
    }
}

//com sondagem quadrática 
void inserir(int chave, int valor){
    int ind = h(chave); 
    int novoInd = ind; 
    for (int i = 1; i < TAM_TABELA; i++){
        if (tabela[novoInd].chave == -1 || tabela[novoInd].chave == -2){
            tabela[novoInd].chave = chave; 
            tabela[novoInd].valor = valor; 
        } else{
            novoInd = (ind + CONST1 * i + CONST2 * i * i) % TAM_TABELA;  
        }
    }
}

void remover(int chave){
    int ind = h(chave); 
    for (int i = 1; i < TAM_TABELA; i++){
        if (tabela[ind].chave == chave) {
            tabela[ind].chave = -2; 
        }else if (tabela[ind].chave == -1){
            break; 
        } else{
            ind = (ind + 1) % TAM_TABELA; 
        }
    }
}

void busca(int chave){
    int ind = h(chave); 
    for (int i = 0; i < TAM_TABELA; i++){
        if (tabela[ind].chave == chave){
            return tabela[ind].valor; 
        } else if (tabela[ind].chave == -1){
            break; 
        } else{
            ind = (ind + 1) % TAM_TABELA;
        }
    }
}

void print_hash() {
    for (int i = 0; i < TAM_TABELA; i++){
        printf("índice> %d, chave %d, valor %d\n", i, tabela[i].chave, tabela[i].valor); 
    }
}

int main(void){
    //inicializamos a tabela com -1 (valor da chave), tabela vazia 
    for (int i = 0; i < TAM_TABELA; i++){
        tabela[i].chave = -1; 
    }


    return EXIT_SUCCESS; 
}
