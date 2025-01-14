#include <stdio.h>
int main(void){

    int n, notas[] = {200, 100, 50, 20, 10, 5, 2, 1}, valor[8]= {0}; 
    scanf("%d", &n);
    for(int i = 0; i <= 7; i++){
        while (n >= notas[i]){
            n -=  notas[i];
            valor[i] += 1;
        }
        printf("%d nota(s) de R$ %d\n", valor[i], notas[i]);
    }

    return 0; 
}