#include <stdio.h>

int main(void){
    int a, b, div;
    int menor, maior;
    scanf("%d %d", &a, &b);
    menor = b;
    maior = -1;
    for(int i = b; i >= a; i--){
        div = 0;
        for(int j = 1; j <= i; j++){
            if(i % j == 0){
            div += 1;
        }
        }
        if(div == 2){
            if(i > maior){
                maior = i;
            }else{
                if(i <= menor){
                    menor = i;
                }
            }
        }
    }
    if((maior == -1)){
        printf("nenhum primo no intervalo\n");
    }else{
        printf("menor primo: %d\n", menor);
        printf("maior primo: %d\n", maior);
    }   
    return 0;   
}
