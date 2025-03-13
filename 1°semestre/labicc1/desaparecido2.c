#include <stdio.h> 

int soma(int vet[], int tam);

int main(void){
    int full[100000], missing[100000];
    int N, cont=1;
    scanf("%d", &N);
    for(int i = 0; i < N; i++){
        full[i] = cont;
        cont += 1;
    }
    for(int i = 0; i < N-1; i++){
        scanf("%d", &missing[i]);
    }
    int num = soma(full, N) - soma(missing, N-1);
    printf("Numero desaparecido: %d\n", num);
}

int soma(int vet[], int tam){
    int soma = 0;
    for(int i = 0; i < tam; i++){
        soma += vet[i];
    }
    return soma;
}