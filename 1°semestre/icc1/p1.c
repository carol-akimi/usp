#include <stdio.h>
int main(void){
    double S;
    int a;
    S = 0;
    for(int i = 1; i <= 50; i++){
        a = 2*i - 1;
        S += ((double)a/i);
        printf("%lf\n", S);
    }
    printf("%lf", S);
    return 0;
}