#include <stdio.h> 
#include <stdlib.h> 
#include <limits.h>

void merge_sort(int *vet, int inicio, int fim);
void intercala(int *vet, int inicio, int meio, int fim);

int main(void){
    int n;
    scanf("%d", &n);
    int *vet  = (int*)malloc(sizeof(int)*n);
    for (int i = 0; i < n; i++){
        scanf("%d", &vet[i]); 
    }
    merge_sort(vet, 0, n-1); 
    for (int i = 0; i < n; i++){
        printf("%d, ", vet[i]); 
    }
    printf("\n");
    free(vet);
    vet = NULL; 
}

void merge_sort(int *vet, int inicio, int fim){
    int meio; 
    if (inicio < fim){
        meio = (inicio+fim)/2;
        merge_sort(vet, inicio, meio);
        merge_sort(vet, meio+1, fim);
        intercala(vet, inicio, meio, fim);
    }

}

void intercala(int *vet, int inicio, int meio, int fim){
    int i, j, k;
    int n1, n2; //tamanho dos sub-arranjos 
    n1 = meio - inicio + 1;
    n2 = fim - meio; 
    //os sub-arranjos que serão intercalados 
    int L[n1+1], R[n2+1];
    //inciando os subconjuntos 
    for(i = 0; i < n1; i++){
        L[i] = vet[inicio+i];
    }
    L[n1] = INT_MAX;
    for(j = 0; j < n2; j++){
        R[j] = vet[meio+j+1];
    }
    R[n2] = INT_MAX;
    i = 0; 
    j = 0; 
    for (k = inicio; k < fim; k++){
        if (L[i] <= R[j]){
            vet[k] = L[i];
            i++;
        }else{
            vet[k] = R[j]; 
            j++; 
        }
    }

}