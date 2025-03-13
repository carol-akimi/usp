#include <stdio.h> 
#include <stdlib.h>
#include "rbt.h"

int main(void){
    RBT *T; 
    T = rbt_criar();
    rbt_inserir(T, 10);
    rbt_inserir(T, 20);
    rbt_inserir(T, 3);
    rbt_inserir(T, 11);
    rbt_inserir(T, 9);
    rbt_inserir(T, 22);
    rbt_inserir(T, 15);

    rbt_imprimir(T); 

    rbt_remover(T, 20); 
    rbt_remover(T, 9); 

    rbt_imprimir(T); 

}