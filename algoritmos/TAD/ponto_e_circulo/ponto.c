#include "ponto.h"
#include <stdio.h>
#include <stdlib.h> 

struct ponto_ {
    float x;
    float y;
};

/*
função responsavel por criar um ponto ao receber as coordenadas (x, y)
devolve um ponteiro que aponta para o ponto criado 
*/
PONTO *ponto_criar (float x, float y){
    PONTO *p; 
    if ((p = (PONTO*) malloc(sizeof(PONTO))) == NULL){//fiz a alocação do ponto cuidado com os parenteses (a alocacao deve vir antes)
        exit(1); //se a alocação der errado acaba
    } 
    p->x = x;
    p->y = y;
    return p; 
}

void ponto_apagar (PONTO **p){
    if (*p != NULL){
        free(*p);
        (*p) == NULL;
    }
}

bool ponto_set (PONTO *p, float x, float y){
    if(p != NULL){
        p->x = x;
        p->y = y;
        return true;
    }
    return false;
}

float ponto_get_x (PONTO *p){
    return p->x;
}

float ponto_get_y (PONTO *p){
    return p->y;
}

void ponto_print (PONTO *p){
    printf("(%.1f, %.1f)", p->x, p->y);
}