#include "circulo.h"
#include "ponto.h"
#include <stdio.h>
#include <stdlib.h>

struct circulo_{
    PONTO *p;
    float raio;
};

CIRCULO *circulo_criar (PONTO *p, float raio){
    CIRCULO *c;
    if ((c = (CIRCULO*) malloc(sizeof(CIRCULO))) == NULL){ //cuidado pois a alocaçao deve ser feita antes de verificar se e null
        exit(1);  
    }
    c->p = p;
    c->raio = raio;
    return c;
}

bool circulo_set_ponto (CIRCULO *c, PONTO *p){
    if (c != NULL){
        c->p = p;
        return true;
    }
    return false;
}

 bool circulo_set_raio (CIRCULO *c, int raio){
    if (c != NULL){
        c->raio = raio;
        return true;
    }
    return false;
 }

 PONTO *circulo_get_ponto (CIRCULO *c){
    if (c != NULL)
        return c->p;
    return (NULL);
 }

 int circulo_get_raio (CIRCULO *c){
    if (c != NULL)
        return c->raio;
 }

 void circulo_apagar (CIRCULO **circulo){
    if (*circulo != NULL){
        free(*circulo);
        *circulo = NULL;
    }
 }