#include <stdio.h> 

int main(void){
    float n, vet[10000];
    float maior = -1;
    scanf("%f", &n);
    for(int i = 0; i < n; i++){
        scanf("%f", &vet[i]);
        if(vet[i]>maior){
            maior = vet[i];
        }
    }
    printf("%f\n", maior);
    return 0;
}

