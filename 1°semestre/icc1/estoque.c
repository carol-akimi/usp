#include <stdio.h>

int main(void){
    int n, x;
    int produtos; 
    produtos = 0; 
    while(n != 3){
        scanf("%d", &n);
        if(n == 1){
            scanf("%d", &x);
            produtos += 1;
        }if(n==2){
            printf("%d", produtos);
        }
    }

    return 0; 
}