#include <stdio.h> 
#include <stdlib.h>
#include <string.h>
#include "item.h"
#include "Pilha.h"

float rpn(char *sequencia){
    PILHA *p; 
    p = pilha_criar(); 
    for (int i = 0; i < strlen(sequencia); i++){
        if (sequencia[i] == '+' || sequencia[i] == '-' ||sequencia[i] == '/' ||sequencia[i] == '*'){
            ITEM *it2;
            ITEM *it1;
            it2 = pilha_desempilhar(p); 
            float *n2 = item_get_dados(it2); 
            it1 = pilha_desempilhar(p); 
            float *n1 = item_get_dados(it1); 
            //printf("n2:%f\n", *n2);
            //printf("n1:%f\n", *n1);
            float *res = (float*)malloc(sizeof(float)); //nem essa 
            switch (sequencia[i]){
                case '+': 
                    *res = (*n1) + (*n2); break; 
                case '-': 
                    *res = (*n1) - (*n2); break; 
                case '/': 
                    *res = (*n1) / (*n2); break; 
                case '*': 
                    *res = (*n1) * (*n2); break; 
            } 
            //printf("res: %f\n", res); 
            ITEM *it = item_criar(i, res); 
            pilha_empilhar(p, it); 
            
        }else{
            ITEM *it; 
            char c = sequencia[i]; 
            float *num = (float*) malloc(sizeof(float)); //nao estava alocando essa memoria aqui 
            *num = atof(&c);  
            it = item_criar(i, num); 
            pilha_empilhar(p, it); 
        }

    }
    ITEM *topo;
    topo = pilha_topo(p); 
    float *resultado = malloc(sizeof(float)); 
    resultado = item_get_dados(topo);
    //printf("res_final:%f", *resultado); 
    return *resultado; 
}