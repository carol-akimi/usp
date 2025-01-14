#include <stdio.h>

int main(void){
    int N, M, bin;
    int a = 0; int b = 0; 
    int dec = 1; int dec2 = 1;
    scanf("%d %d", &N, &M);
    for(int i = 0; i < (N-1); i++){ //descobrir 2^x para multiplicar com o bit 
        dec *= 2;
    }
    for(int i = 0; i < (M-1); i++){
        dec2 *= 2;
    }
    for(int i = 0; i < N; i++){
        scanf("%d", &bin);
        a += bin*dec; //transformar em decimal 
        dec = dec/2;
    }
    for(int i = 0; i < M; i++){
        scanf("%d", &bin);
        b += bin*dec2;
        dec2 = dec2/2;
    }
    
    printf("%d\n", a + b);
    return 0;
}