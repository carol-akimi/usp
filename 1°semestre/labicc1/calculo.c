#include <stdio.h>
#include <math.h>

int main(void){
    float P1, P2, l1, l2, l3, l4, nfinal, nlistas;
    scanf("%f %f %f %f %f %f", &P1, &P2, &l1, &l2, &l3, &l4);
    nlistas = (l1 + l2 + l3 +l4)/4;
    nfinal = (P1 + P2 + nlistas)/3;

    if ((nlistas == 0) | (nfinal < 3)){
        printf("Reprovado\n");

    }else{
        if(nfinal >= 5){
            printf("Aprovado\n");

        }else{
            printf("Recuperacao\n");
        }
    }


}