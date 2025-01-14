#include <stdio.h>

int main(void){
    int N;
    int impares = 0;
    char c; char carac[256]={0}; /*cada posição de carac representa um elemento da tabela ascii*/
    scanf("%d", &N);
    for(int i = 0; i < N; i++){
        scanf(" %c", &c);
        int id = c;
        carac[id] += 1;
    }

    if(N % 2 == 0){ /*a qnt de caracter é par, as quantidades (de caracteres) so podem ser pares*/
        for(int i = 0; i < 256; i++){
            if(carac[i]%2==1){
                impares += 1;
            }
        }if(impares == 0){
            printf("Sim\n");
        }else{
            printf("Nao\n");
        }
    }else{ /*a qnt de caracter é impar, pode ter uma quantidade impar*/
        for(int i = 0; i < 256; i++){
            if(carac[i]%2==1){
                impares += 1;
            }
        }if(impares == 1){
            printf("Sim\n");
        }else{
            printf("Nao\n");
        }
    }
    return 0;

}