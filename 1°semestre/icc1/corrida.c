#include <stdio.h>

int main(void){
    int N, k=0, curva;
    scanf("%d", &N);
    if(N<6 && N % 2 == 1){
        printf("0\n");
    }else{
        k = (N-6)/2;
        curva = 1 + k;
        printf("%d\n", curva); 
    }
    return 0; 
}