#include <stdio.h>

int main(void){

    int n;
    int vet[10000];
    int i = 0;
    while(0 == 0){
        scanf("%d", &n);
        if(n==0){
            break;
        }else{
            vet[i] = n;
        }
        i += 1;
        printf("%d", vet[i]);
    }

}

