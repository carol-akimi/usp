#include <stdio.h>

int main(void){
    int E, D;
    scanf("%d", &E);
    scanf("%d", &D); 
    if (E > D){
        printf("%d\n", E+D); 
    }else{
        printf("%d\n", 2*(D-E)); 
    }


    return 0; 
}