#include <stdio.h>

int main(void){
    int X, n;//n vai ser usado para calcular o fatorial ex. 3! = 1 * (n+1) * (n+2)
    double S;
    double fat, pot;
    scanf("%d", &X);
    S = X;
    pot = fat = n = 1;
    for(int i = 0; i < 19; i++){
        pot = pot * X * X;
        fat = fat * (n+1) *(n+2);
        if(i%2==0){
            S -= (pot/fat);
        }else{
            S += (pot/fat);
        }
        n += 2;
    }
    printf("%lf", S);
    return 0;
}