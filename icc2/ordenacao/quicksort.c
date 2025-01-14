#include <stdio.h>
#include <stdlib.h>

void swap(int *a, int *b){
    int aux;
    aux = *a; 
    *a = *b; 
    *b = aux; 
}

void quicksort(int v[], int inicio, int fim){
    int i = inicio; 
    int j = fim; 
    int pivo = v[(inicio + fim)/2];
    do{
        while (v[i] < pivo) i++; 
        while (v[j] > pivo) j--; 

        if (i <= j){
            swap(&v[i], &v[j]);
            i++;
            j--; 
        }
    } while (i < j); 

    if (j > inicio){
        quicksort(v, inicio, j); //vetor do inicio ate j 
    }
    if (i < fim){
        quicksort(v, i, fim); 
    }
}

int main(void){
    int v[10] = {1, 6, 3, 9, 10, 24, 6, 92, 12, 11};
    quicksort(v, 0, 9);
    for (int i = 0; i < 10; i++){
        printf("%d, ", v[i]);
    }
    printf("\n"); 
}