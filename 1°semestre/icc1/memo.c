#include <stdio.h>
int main(void){
    unsigned short int A, B, C; 
    long long valor; //onde vao estar concatenados os valores 
    scanf("%hu %hu %hu", &A, &B, &C); 
    valor = 0; 
    valor = (valor + C) << 16;
    valor = (valor + B) << 16;
    valor = valor + A;

    printf("%lld\n", valor); //de00volver o numero que corresponde a esse valor 
    return 0;
}

