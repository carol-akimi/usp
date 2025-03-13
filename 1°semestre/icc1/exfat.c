#include <stdio.h>

int main(void){
    long long N;
    int div = 5; 
    int zero = 0; //qtd de zeros a direita 
    scanf("%lld", &N);
    while (N >= div){
        zero += N/div;
        div *= 5;
    }
    printf("%d\n", zero);

    return 0;
}