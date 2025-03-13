#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include "item.h"
#include "Pilha.h"

int main(void){
    
    char *sequencia;
    if ((sequencia = (char*) malloc(105)) == NULL){
        printf("erro\n"); 
        exit(1); 
    }
    scanf("%s", sequencia); 
    float x;
    x = rpn(sequencia); 
    printf("%.2f", x); 
    return 0; 
}