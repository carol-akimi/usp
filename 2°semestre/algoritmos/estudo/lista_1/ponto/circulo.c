#include <stdio.h> 
#include <stdlib.h>
#include "circulo.h"
#define PI 3.14159

struct circulo_{
    PONTO *ponto_c;
    float raio;
};

CIRCULO *circulo_criar (float c, float y, float raio){
    CIRCULO *circulo; 
    circulo = (CIRCULO*) malloc(sizeof(CIRCULO));
    if (circulo != NULL){
        ponto_criar(c, y); 
        circulo->raio = raio; 
        return circulo; 
    }
}

void circulo_apagar (CIRCULO **circulo){
    if (circulo != NULL){
        ponto_apagar(&(*circulo)->ponto_c); 
        free(*circulo);
        *circulo = NULL; 
    }
}

float circulo_area (CIRCULO *circulo){
    if (circulo != NULL){
        return PI*(circulo->raio)*(circulo->raio); 
    }
}

PONTO *circulo_centro(CIRCULO *c){
    if (c != NULL){
        return c->ponto_c;
    }
}

float circulo_raio(CIRCULO *c){
    if (c != NULL){
        return c->raio; 
    }
}