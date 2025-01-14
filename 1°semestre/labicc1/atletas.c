#include <stdio.h>

void swap(int *a, int *b){
    int temp = *a;
    *a = *b;
    *b = temp;
}
void sort(int vet[], int tam){ //fazer a ordenação do vetor 
    for(int i = 0; i < tam -1; i++){
        for(int j = 0; j < tam - 1 - i; j++){
            if(vet[j] < vet[j+1]){
                swap(&vet[j], &vet[j+1]);
            }
        }
    }
}

int main(void){
    int n; 
    int pontos[100], ordenado[100], posicao[100], ordenado_sem[100];
    scanf("%d", &n);
    for(int i = 0; i < n; i++){
        scanf("%d", &pontos[i]); //pontos vai guardar os valores dos pontos na ordem dos atletas
        ordenado[i] = pontos[i];
    }
    sort(ordenado, n); //ordenou o vetor 
    ordenado_sem[0] = ordenado[0];
    int cont2 = 1;
    for(int i = 1; i < n; i++){
        if(ordenado[i] != ordenado_sem[cont2-1]){ //estou tirando todos os pontos repetidos 
            ordenado_sem[cont2] = ordenado[i];
            cont2 += 1;
        }
    }

    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            if(pontos[i]==ordenado_sem[j]){
            posicao[i] = j + 1;
            break;
            }
        }
    }
    for(int i = 0; i < n; i++){
        printf("%dº Atleta, %d Pontos, %dº Colocado\n", i+1, pontos[i], posicao[i]);

    }

}