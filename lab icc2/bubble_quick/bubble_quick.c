#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 

typedef struct prato_{
    int prioridade; 
    int tempo; 
    char nome[51]; 
}Prato; 

void swap(Prato *a, Prato *b);
void bubble_sort(Prato *cardapio, int k);
void print_cardapio(Prato *cardapio, int k);


int main (void){
    //Quantidade dos pratos 
    int k; 
    scanf("%d", &k); 
    //Alocação do vetor cardapio para armazenar os pratos 
    Prato *cardapio; 
    cardapio = (Prato*) malloc(sizeof(Prato)*k); 
    //Leitura dos dados 
    for (int i = 0; i < k; i++){
        scanf("%d %d %s", &cardapio[i].prioridade, &cardapio[i].tempo, cardapio[i].nome); 
    }
    bubble_sort(cardapio, k); 
    print_cardapio(cardapio, k); 
}

void swap(Prato *a, Prato *b){
    Prato aux; 
    aux = *a; 
    *a = *b; 
    *b= aux;
}


void bubble_sort(Prato *cardapio, int k){
    int trocas = 1;
    for(int i = 0; i < k-1; i++){
        trocas = 0; 
        for (int j = 0; j < k - i -1; j++){
            if (cardapio[j+1].prioridade < cardapio[j].prioridade){
                swap(&cardapio[j+1], &cardapio[j]); 
                trocas = 1; 
            } if (cardapio[j+1].prioridade == cardapio[j].prioridade){
                if(cardapio[j+1].tempo < cardapio[j].tempo){
                    swap(&cardapio[j+1], &cardapio[j]); 
                }
            }
        }
        if(trocas == 0)
            break; 
    }
}
/*
a escolha do pivo é importante 
*/
void quick_sort(Prato *cardapio, int k){

}

void print_cardapio(Prato *cardapio, int k){
    for (int i = 0; i < k; i++){
        printf("%s\n", cardapio[i].nome); 
    }
}