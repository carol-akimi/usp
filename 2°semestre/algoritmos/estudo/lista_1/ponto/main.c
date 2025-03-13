#include <stdio.h> 
#include <stdlib.h> 
#include "ponto.h"
#include "circulo.h"

int main(void){
    PONTO *p; 
    float x, y;
    printf("Digite as coordenadas para o ponto p:\n");
    scanf("%f %f", &x, &y); 
    p = ponto_criar(x, y); 

    CIRCULO *c; 
    float xc, yc, raio; 
    printf("Digite as coordenadas para o centro e o raio do círculo:\n"); 
    scanf("%f %f %f", &xc, &yc, &raio); 
    c = circulo_criar(xc, yc, raio);

    float d; 
    d = distancia(p, circulo_centro(c)); 
    if (d > circulo_raio(c)){
        printf("O ponto é exterior!\n"); 
    }else{
        printf("O ponto é interior!\n"); 

    }
    ponto_apagar(&p);
    circulo_apagar(&c); 
}
