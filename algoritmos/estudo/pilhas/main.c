#include <stdio.h>
#include <stdlib.h>
#include "pilha_seq.h"
#include "../../item/item.h"

void binario(int n); 

int main (void){
    int n; 
    printf("Digite um número em decimal:\n"); 
    scanf("%d", &n);
    binario(n); 
    return 0; 
}


/*
Essa função recebe um núemro decinal n e printa esse número em binário 
*/
void binario(int n){
    PILHA *pilha; 
    pilha = pilha_criar();
    while (n != 0){
        ITEM *it = item_criar(n % 2, NULL); 
        pilha_empilhar(pilha, it); 
        n = n /2; 
    }
    int tam = pilha_tamanho(pilha); 
    //eu estava usando a função pilha_tamanho para fazer as iterações 
    //isso não dá certo, pois a cada pillha_desempilhar, o tam diminui 
    //dessa forma o loop não funciona adequadamente 
    for (int i = 0; i < tam; i++){
        printf("%d", item_get_chave(pilha_desempilhar(pilha))); 
    }
    printf("\n"); 
    pilha_apagar(&pilha); 
}