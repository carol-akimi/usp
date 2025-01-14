#include <stdio.h> 
#include <stdlib.h> 
#include "lista.h"
#include "../../item/item.h"

int main(void){
    LISTA *lista_nao; 
    lista_nao = lista_criar(false); 
    LISTA *lista_ord; 
    lista_ord = lista_criar(true); 
    for (int i = 0; i < 5; i++){
        int *novo; 
        novo = (int*) malloc(sizeof(int)); 
        scanf("%d", novo); 
        ITEM *it = item_criar(i, novo); 
        lista_inserir(lista_nao, it); 
    }

    for (int i = 0; i < 5; i++){
        int chave; 
        int *novo2; 
        novo2 = (int*) malloc(sizeof(int)); 
        scanf("%d", &chave); 
        scanf("%d", novo2); 
        ITEM *it = item_criar(chave, novo2); 
        lista_inserir(lista_ord, it); 
    }
    printf("lista nao ordenada\n"); 
    lista_imprimir(lista_nao); 
    printf("lista ordenada\n"); 
    lista_imprimir(lista_ord); 
    lista_remover(lista_nao, 2); 
    lista_remover(lista_ord, 3);
    printf("lista nao ordenada, pos remocao\n");  
    lista_imprimir(lista_nao); 
    printf("lista ordenada, pos remocao\n");  
    lista_imprimir(lista_ord); 
    ITEM *item1 = lista_busca(lista_nao, 4);
    printf("item: %d %d\n", item_get_chave(item1), *(int*)item_get_dados(item1));  
    ITEM *item2 = lista_busca(lista_ord, 2); 
    printf("item: %d %d\n", item_get_chave(item2), *(int*)item_get_dados(item2));  
    lista_apagar(&lista_nao); 
    lista_apagar(&lista_ord); 
    return 0; 

}