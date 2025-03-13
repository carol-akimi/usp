#include <stdio.h>
#include <stdlib.h>


int maior(int *vet, int n);
int soma(int *vet, int n);

int main(void){
    int n; 
    scanf("%d", &n);
    int *vet;
    vet = (int*) malloc(sizeof(int)*n);
    for (int i = 0; i < n; i++){
        scanf("%d", &vet[i]);
    }
    printf("%d\n", maior(vet,n));
    printf("%d\n", soma(vet, n));


    free(vet);
    vet = NULL;
}

int maior(int *vet, int n){
    if (n == 1){ //comando base
        return vet[0];
    }else{
        int aux = maior(vet, n-1);
        if(aux < vet[n-1]){
            return vet[n-1];
        }else{
            return aux;
        }
    }
}

int soma(int *vet, int n){
    if (n == 1){
        return vet[0];
    }else{
        int SOMA = soma(vet, n-1) + vet[n-1];
        return SOMA;
    }
}

int busca_rec (int *vet, int num){
    
}