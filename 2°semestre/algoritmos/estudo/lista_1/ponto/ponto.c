#include <stdio.h> 
#include <stdlib.h>
#include <math.h>
#include "ponto.h"

struct ponto_{
    float x;
    float y;
};

PONTO *ponto_criar (float x, float y){
    PONTO *p; 
    p = (PONTO*) malloc(sizeof(PONTO)); 
    if (p != NULL){
        p->x = x; 
        p->y = y; 
        return p; 
    }
}

void ponto_apagar (PONTO **p){
    if (p != NULL){
        free(*p); 
        *p = NULL; 
    }
}

bool ponto_set (PONTO *p, float x, float y){
    if (p != NULL){
        p->x = x; 
        p->y = y; 
        return true;
    }
    return false; 
}
//ao invés de mandar o circulo inteiro, só mando o centro (não precisa de mais)
float distancia(PONTO *p, PONTO *centro){
    if (p != NULL && centro != NULL){
        float d; 
        d = sqrt(pow((centro->x - p->x), 2) + pow((centro->y - p->y), 2));
        return d; 
    }
}