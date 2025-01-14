#include <stdio.h>
#include <stdlib.h> 

void entrada (int *vet, int n);
void inverte(int *vet, int n);
void imprime(int *vet, int n);

int main (void){
    int n;
    scanf("%d", &n);
    int *vet;
    vet = (int*) malloc(sizeof(int)*n);
    entrada(vet, n);
    inverte(vet, n);
    imprime(vet, n);
    free(vet);
    return 0;
}

void entrada (int *vet, int n){
    for (int i = 0; i < n; i++){
        scanf("%d", &vet[i]);
    }
}

void inverte (int *vet, int n){
    int ind = n-1;
    for (int i = 0; i < (n/2); i++){
        int temp = vet[i];
        vet[i] = vet[ind];
        vet[ind] = temp;
        ind--;
    }
}

void imprime(int *vet, int n){
    for (int i = 0; i < n; i++){
        printf("%d ", vet[i]);
    }
}