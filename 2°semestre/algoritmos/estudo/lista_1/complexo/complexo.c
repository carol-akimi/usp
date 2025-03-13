#include <stdio.h> 
#include <stdlib.h>
#include "complexo.h"

struct complexo_{
    double real; 
    double imag; 
};

COMPLEXO *criar(double real, double imag){
    COMPLEXO *c; 
    c = (COMPLEXO*)malloc(sizeof(COMPLEXO)); 
    if (c != NULL){
        c->real = real; 
        c->imag = imag; 
    }
}

void liberar(COMPLEXO **c){
    if (c != NULL){
        free(*c); 
        *c = NULL; 
    }
}

void copiar(COMPLEXO *source, COMPLEXO *target){
    if (source != NULL && target != NULL){
        target->real = source->real; 
        target->imag = source->imag; 
    }
}

COMPLEXO *adicao(COMPLEXO *a, COMPLEXO *b){
    COMPLEXO *add; 
    add->real = (a->real) + (b->real);
    add->imag = (a->imag) + (b->imag);
    return add; 
}

COMPLEXO *subtracao(COMPLEXO *a, COMPLEXO *b){
    COMPLEXO *sub; 
    sub->real = (a->real) - (b->real);
    sub->imag = (a->imag) - (b->imag);
    return sub; 
}

int e_real(COMPLEXO *c){
    return c->imag == 0 ? 0 : 1; 
}

double real(COMPLEXO *c){
    if (c != NULL){
        return c->real; 
    }
}

double imag(COMPLEXO *c){
    if (c != NULL){
        return c->imag; 
    }
}

void atribuir(COMPLEXO *c, double real, double imag){
    if (c != NULL){
        c->real = real; 
        c->imag = imag; 
    }
}

void atribuir_real(COMPLEXO *c, double real){
    if (c != NULL){
        c->real = real; 
    }
}

void atribuir_imag(COMPLEXO *c, double imag){
    if (c != NULL){
        c->imag = imag; 
    }
}