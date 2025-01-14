#include "ponto.h"
#include "circulo.h"
#include <stdio.h>

int main(void){
    PONTO *p;
    float dados[5];
    for (int i = 0; i < 5; i++){
        scanf("%f", &(dados[i]));
    }
    p = ponto_criar(dados[0], dados[1]);
    CIRCULO *r;
    PONTO *centro;
    centro = ponto_criar(dados[2], dados[3]);
    r = circulo_criar(centro, dados[4]); 
    printf("Ponto: ");
    ponto_print(p);
    printf("\n");
    centro = circulo_get_ponto(r);
    float raio = circulo_get_raio(r);
    printf("Circulo: Centro ");
    ponto_print(centro);
    printf(", Raio = %.1f\n", raio);
    ponto_apagar(&p);
    circulo_apagar(&r);
    return 0; 
}