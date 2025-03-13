#include <stdio.h>

int main(void){
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);

    if(a == c && b == d && a>0 && b>0){
        if(a == d){
            printf("quadrado!\n");
        }else{
            printf("retangulo!\n");
        }
    }else{
        printf("nenhum!\n");
    }
    
    return 0;
}