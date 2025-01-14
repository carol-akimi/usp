#include <stdio.h> 
#include <stdlib.h>
#include <string.h>
#include "../../algoritmos/item/item.h"
#include "Pilha.h"

typedef struct {
    char nome[51];
    int nota; 

}pessoa; 

int main(void){
    int n; 
    scanf("%d", &n); 
    pessoa *jogadores; 
    jogadores = (pessoa*) malloc(sizeof(pessoa)*n); 
    for (int i = 0; i < n; i++){ //recebe os dados e coloca no vetor jogadores 
        scanf(" %s %d", jogadores[i].nome, jogadores[i].nota);
    }
    shell_sort(jogadores, n);
    printf("ordenação com shell_sort\n"); 
    imprimir_vetor(jogadores, n); 
    PILHA *p = selecao(jogadores, n);
    printf("ordenação com selection_sort\n"); 
    imprimir_pilha(p, n);
    
    return (0);
}


void shell_sort(pessoa *jogadores, int n){
    for(int tam=n/2; tam>0; tam/=2){
        for(int i=tam; i<n; i++){
            pessoa temp=jogadores[i];
            int j;
                for(j=i; j>=tam && jogadores[j-tam].nota>temp.nota; j-=tam)
                    jogadores[j]=jogadores[j-tam];
            
            jogadores[j]=temp;
        }
    }
}


PILHA *selecao(pessoa *jogadores, int n){
    PILHA *p; 
    p = pilha_criar(); 
    pessoa *min; 
    *min = jogadores[0]; 
    int posicao = 0; 
    for (int i = 0; i < n; i++){
        for (int j = i + 1; j < n; j++){
            if (jogadores[j].nota < min->nota){
                *min = jogadores[j]; 
                posicao = j; 
            }
            if (jogadores[j].nota == min->nota){ 
                if((strcmp(jogadores[j].nome, min->nome)) < 0){ //if s1 < s2 numero negativo 
                    *min = jogadores[j]; 
                    posicao = j; 
                }
            }
        }
        ITEM *it = item_criar(i, min);
        pilha_empilhar(p, it);  
        jogadores[posicao] = jogadores[i];    
    }
    return p; 
}

void imprimir_vetor(pessoa *jogadores, int n){
    for (int i = 0; i < n; i++){
        printf("%s\n", jogadores[i].nome);
        printf("%d\n", jogadores[i].nota);
    }
    return; 
}

void imprimir_pilha(PILHA* pilha, int n){
    pessoa* jogador;
    for(int i=0; i<n; i++){
        jogador=(pessoa*)item_get_dados(pilha_desempilhar(pilha));
        printf("%s %d\n", jogador->nome, jogador->nota);
    }
}
