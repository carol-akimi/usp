#include <stdio.h>

int main(void){
    int N;
    float soma;
    scanf("%d", &N);
    soma = 0;
    for(int i = 1; i <= N; i++){
        if(i%2==0){
            soma = soma - (1.0/i);
        }else{
            soma = soma + (1.0/i);
        }

    } 
    printf("%.4f\n", soma);
    return 0; 
}