#include <stdio.h> 
#include <stdlib.h>
#include <string.h>
#include "item.h"
#include "Pilha.h"

float rpn(char *sequencia){
    PILHA *p; 
    p = pilha_criar(); 
    for (int i = 0; i < strlen(sequencia); i++){
        if (sequencia[i] == '+' || sequencia[i] == '-' ||sequencia[i] == '/' ||sequencia[i] == '*'){ //se é um dos operadores 
            ITEM *item1;
            ITEM *item2;
            ITEM *res;
            float *res_dados = malloc(sizeof(float)); 
            *res_dados = 0; 
            item2 = pilha_desempilhar(p);
            float *num2 = item_get_dados(item2); //esse ponteiro para dados já foi alocado 
            item1 = pilha_desempilhar(p); 
            float *num1 = item_get_dados(item1); 
            switch (sequencia[i]){
                case '+': 
                    *res_dados = *num2 + *num1; break; 
                case '-': 
                    *res_dados = *num2 - *num1; break; 
                case '/': 
                    *res_dados = *num2 / *num1; break; 
                case '*': 
                    *res_dados = *num2 * *num1; break; 
            }
            item_criar(i, res);  
            pilha_empilhar(p, res); 
            item_apagar(&item1); 
            item_apagar(&item2); 
        }else{ //se é um numero
            ITEM *item; 
            item = item_criar(i, &sequencia[i]-'0');
            pilha_empilhar(p, item); 
        }
    }
    float *resultado = malloc(sizeof(float)); 
    resultado = item_get_dados(pilha_topo(p)); 
    return *resultado;  
}