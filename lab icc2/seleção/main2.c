#include <stdio.h> 
#include <stdlib.h>
#include <string.h>
#include "item.h"
#include "Pilha.h"
#include <time.h>

typedef struct {
    char nome[51];
    int nota; 

}pessoa; 

void shell_sort(pessoa *jogadores, int n);
PILHA *selecao(pessoa *jogadores, int n);
void imprimir_vetor(pessoa *jogadores, int n);
void imprimir_pilha(PILHA *p, int n);


int main(void){
    int n; 
    scanf("%d", &n); 
    pessoa *jogadores; 
    jogadores = (pessoa*) malloc(sizeof(pessoa)*n); 
    for (int i = 0; i < n; i++){ //recebe os dados e coloca no vetor jogadores 
        scanf("%s %d", jogadores[i].nome, &(jogadores[i].nota));
    }
    //clock_t start_1 = clock(); 
    shell_sort(jogadores, n);
    //clock_t end_1 = clock(); 
    //printf("Ordenação com shell_sort\n"); 
    imprimir_vetor(jogadores, n); 
    //printf("O tempo de execução do shell sort foi de %lf\n", ((double) (end_1 - start_1)) / CLOCKS_PER_SEC);
    //clock_t start_2 = clock();

    free(jogadores);
    jogadores = NULL; 
    return (0);
}


void shell_sort(pessoa *jogadores, int n){
    for(int tam=n/2; tam>0; tam/=2){
        for(int i=tam; i<n; i++){
            pessoa temp=jogadores[i];
            int j;
            for(j=i; j>=tam && jogadores[j-tam].nota>temp.nota; j-=tam){
                jogadores[j]=jogadores[j-tam];
            }
                    
            jogadores[j]=temp;
        }
    }
    for(int i=0; i<n-1; i++){
      if(jogadores[i].nota==jogadores[i+1].nota){
        if((strcmp(jogadores[i].nome, jogadores[i+1].nome))<0){
            pessoa temp;
            temp=jogadores[i+1];
            jogadores[i+1]=jogadores[i];
            jogadores[i]=temp;
        }
        }
    }
}


void imprimir_vetor(pessoa *jogadores, int n){
    for (int i = n-1; i >= 0; i--){
        printf("%s %d\n", jogadores[i].nome, jogadores[i].nota);
    }
    return; 
}

