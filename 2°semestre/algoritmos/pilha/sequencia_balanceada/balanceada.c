#include <stdio.h> 
#include <stdlib.h> 
#include <stdbool.h>
#include "Pilha.h"
#include "item.h"

//REFAZER ESSE CODIGO, ESTA MUUITO FEIO 

bool balanceada(char *sequencia){
    PILHA *p;
    p = pilha_criar();
    int i = 0; 
    while (sequencia[i] != '\0'){
        if (sequencia[i] == '(' || sequencia[i] == '{' || sequencia[i] == '['){
            ITEM *it;
            it = item_criar(i, &sequencia[i]);
            pilha_empilhar(p, it); 
            i++; 
        }else{
            if (!pilha_vazia(p)){ //verifica se a pilha esta vazia 
            ITEM *topo; 
            topo = pilha_desempilhar(p);
            char *dado = item_get_dados(topo);
                if (sequencia[i] == ')'){
                    if (*dado != '('){
                        return false; 
                    }
                }
                if (sequencia[i] == ']'){
                    if (*dado != '['){
                        return false; 
                    }
                }
                if (sequencia[i] == '}'){
                    if (*dado != '{'){
                        return false; 
                    }
                }
            i++; 
            }else{ /*se sobraram elementos que nao foram avaliados, mas a pilha acabou, 
            significa que nao e balanceado */
                return false;
            }
        }
    }
    if(!pilha_vazia(p)){
        return false;
    }else{
        return true; 
    }
}



/*
pilha_tamanho(p) devolve 1005 (achei que devolvesse o tamanho da string)
*/