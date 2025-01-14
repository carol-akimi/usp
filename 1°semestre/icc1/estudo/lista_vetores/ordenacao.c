#include <stdio.h> 
#include <stdlib.h> 
void entrada(int n, int **vet);
void ordenacao(int n, int *vet);
void swap(int *x, int *y);
void imprimir(int n, int *vet);

int main(void){
    int n; 
    int *vet = NULL;
    scanf("%d", &n);
    entrada(n, &vet);
    ordenacao(n, vet);
    imprimir(n, vet);
    return 0;

}

void entrada(int n, int **vet){
    (*vet) = (int*) malloc(sizeof(int)*n);//cuidado com a alocacao assim, precisa mandar por referencia
    for (int i = 0; i < n; i++){
        scanf("%d", &(*vet)[i]);
    }
}

void ordenacao(int n, int *vet){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n-i-1; j++){
            if(vet[j] > vet[j+1]){
                swap(&vet[j], &vet[j+1]);
            }
        }
    }
}

void swap(int *x, int *y){
    int temp;
    temp = *x;
    *x = *y;
    *y = temp;
}

void imprimir(int n, int *vet){
    for (int i = 0; i < n; i++){
        printf("%d ", vet[i]);
    }
    printf("\n");
}