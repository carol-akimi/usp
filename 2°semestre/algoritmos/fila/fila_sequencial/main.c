

#include <stdio.h>
#include <stdlib.h> 
#include "filas.h"
#include "../item/item.h"

int main (void){
    FILA *prioridade = fila_criar(); 
    FILA *ordem = fila_criar();   
    int n = 9999; 
    while (n != 0){
        printf("Digite seu comando aqui:");
        scanf("%d", &n); 
        switch (n){
            case 0:
                return 0; 
            case 1: //chega uma ligação 
                printf("Digite seus dados:"); 
                int t; 
                char *num = malloc(sizeof(15)); 
                scanf("%d %s", &t, num); 
                ITEM *it = item_criar(t, num); 
                if (!t){
                    fila_inserir(ordem, it);
                }else{
                    fila_inserir(prioridade, it); 
                }
                break; 
            case 2: //faz uma ligação 
                printf("Numero a ser ligado:"); 
                if (!fila_vazia(prioridade)){
                    char *n = item_get_dados(fila_remover(prioridade)); 
                    printf("%s", n); 
                }else{
                    char *n = item_get_dados(fila_remover(ordem)); 
                    printf("%s", n); 
                }
                printf("\n"); 
                break; 
        }
    }

    int *d = (int)malloc(sizeof(int)*n); 
    int A[100][100]; 
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            scanf("%d", A[i][j]); 
        }
    }

}


//n < 100
//origem é a cidade de origem para os caminhos 
void mini_travelling(int n, int *d, int origem){
    


}
