#include <stdio.h> 
#include <stdlib.h> 

void entrada (int *vet, int n);
int *aloca(int n);
void ordenar (int *vet, int n);
float mediana(int *vet, int n);


int main(void){
    int n; 
    scanf("%d", &n);
    int *vet;
    vet = aloca(n);
    entrada(vet, n);
    ordenar(vet, n);
    float m = mediana(vet, n);
    printf("A mediana é %.2f\n", m);
    free(vet);
    vet = NULL;
    return 0;
    
}

int *aloca(int n){
    int *v;
    if((v = (int*) malloc(sizeof(int)*n)) == NULL){
        printf("erro na alocacao do vetor\n");
        exit(1);
    }
    return v;
}

void entrada (int *vet, int n){
    for (int i = 0; i < n; i++){
        scanf("%d", &vet[i]);
    }
}

void ordenar (int *vet, int n){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n -1 - i; j++){
            if(vet[i] > vet[i+1]){
                int temp = vet[i];
                vet[i] = vet[i+1];
                vet[i+1] = temp;
            }
        }
    }
}

float mediana(int *vet, int n){
    int id = n/2;
    float m;
    if (n % 2 == 0){
        m = ((float)vet[id] + (float)vet[id-1])/2;
    }else{
        m = vet[id];
    }
    return m;
}