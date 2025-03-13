#include <stdio.h> 
#include <stdlib.h> 
#include <string.h>
#include <limits.h> 

//O(n^2)
void bubble_sort(int vet[], int n){
    int troca = 1; 
    for (int i = 0; i < n; i++){
        int troca = 0; 
        for (int j = 0; j < n - 1; j++){
            if (vet[j] > vet[j + 1]){
                int aux = vet[j]; 
                vet[j] = vet[j + 1]; 
                vet[j + 1] = aux; 
                troca = 1;
            }
        }
        if(troca == 0)
            break; 
    }
}

void quick_sort(int vet[], int inicio, int fim){
    int i = inicio; 
    int j = fim; 
    int pivo = vet[(inicio + fim)/2]; //é um elemento 
    do{
        while (vet[i] < pivo) i++; 
        while (vet[j] > pivo) j--;  
        if (i <= j){
            int aux = vet[i]; 
            vet[i] = vet[j]; 
            vet[j] = aux; 
            i++; 
            j--; 
        }
    }while (i < j); 
    if (j > inicio)
        quick_sort(vet, inicio, j); 
    if (i < fim)
        quick_sort(vet, i, fim);

}

void insertion_sort(int vet[], int n){
    int j; 
    for (int i = 1; i < n; i++){
        int x = vet[i]; 
        for (j = i - 1; j >= 0 && vet[j] > x; j--){
            vet[j+1] = vet[j]; 
        }
        vet[j+1] = x; 
    }
}

void shell_sort(int vet[], int inc[], int n, int n_inc){
    int i, j; 
    int h; 
    for (int incre = 0; incre < n_inc; incre++){ //vai iterar pelos elementos de inc
        h = inc[incre]; 
        //inserção simples 
        for (i = h; i < n; i++){
            int aux = vet[i]; 
            for (j = i - h; j >= 0 && vet[j] > aux; j -= h){
                vet[j+h] = vet[j]; 
            }
            vet[j+h] = aux; 
        }
    }

}

void selection_sort(int vet[], int n){
    int min; 
    for (int i = 0; i < n; i++){
        min = i; 
        for (int j = i+1; j < n; j++){
            if (vet[j] < vet[min]) 
                min = j; 
        }
        if (min != i){
            int aux = vet[min];
            vet[min] = vet[i];
            vet[i] = aux; 
        }
    }
}


void intercala(int vet[], int inicio, int meio, int fim){
    int i, j, k;
    int n1, n2;
    //Tamanho dos vetores 
    n1 = meio - inicio + 1;
    n2 = fim - meio; 

    int L[n1+1], R[n2+1]; 

    //Preenchimento dos vetores 
    for (i = 0; i < n1; i++){
        L[i] = vet[inicio + i]; 
    }
    L[n1] = INT_MAX; //sentinela
    for (j = 0; j < n2; j++){
        R[j] = vet[meio + j + 1]; 
    } 
    R[n2] = INT_MAX;  //sentinela2

    i = 0; j = 0; 
    for (k = inicio; k <= fim; k++){
        if (L[i] <= R[j]){
            vet[k] = L[i]; 
            i++; 
        }else{
            vet[k] = R[j]; 
            j++; 
        }
    }
}

void merge_sort(int vet[], int inicio, int fim){
    if (inicio < fim){
        int meio = (inicio+fim)/2; 
        merge_sort(vet, inicio, meio);
        merge_sort(vet, meio+1, fim); 
        intercala(vet, inicio, meio, fim); 
    }
}

void rearranjar_heap(int heap[], int tam_heap, int i){
    int esq, dir, maior; 
    esq = 2*i + 1;
    dir = 2*1 + 2;
    if (esq < tam_heap && heap[esq] > heap[maior]){
        maior = esq; 
    }
    if (dir < tam_heap && heap[dir] > heap[maior]){
        maior = dir; 
    }
    if(maior != i){
        int aux = heap[maior];
        heap[maior] = heap[i];
        heap[i] = aux;
        rearranjar_heap(heap, tam_heap, maior);
    }
}

void construir_heap(int heap[], int tam_heap){
    for (int i = (tam_heap/2) - 1; i >= 0; i--){
        rearranjar_heap(heap, tam_heap, i); 
    }
}

void heap_sort(int vet[], int n){
    construir_heap(vet, n);
    for (int i = n; i >= 0; i--){
        int aux = vet[0]; 
        vet[0] = vet[i-1]; 
        vet[i-1] = aux;
        n--; 
        rearranjar_heap(vet, n, 0);  
    }
}

void contagem_de_menores(int vet[], int n){
    int *posicao = (int*)malloc(sizeof(int)*n); 
    //zerar o vetor posicao 
    for (int i = 0; i < n; i++){
        posicao[i] = 0; 
    }
    for (int i = 1; i < n; i++){
        for (int j = i - 1; j >= 0; j--){
            if (vet[i] < vet[j])
                posicao[j]++; 
            else
                posicao[i]++; 
        }
    }
    int *sorted = (int*)malloc(sizeof(int)*n); 

    for (int i = 0; i < n; i++){
        //printf("posicao: %d", posicao[i]); 
        sorted[posicao[i]] = vet[i]; 
    }
    for (int i = 0; i < n; i++){
        vet[i] = sorted[i]; 
    }
}

int *contagem_de_tipos (int vet[], int n){
    //nao pode armazenar o indice do valor, precisa ser o valor de fato 
    int max = vet[0]; 
    //encontrar o maior elemento 
    for (int i = 0; i < n; i++){
        if (max < vet[i])
            max = vet[i]; 
    }
    int *X = (int*) malloc(sizeof(int)*(max+1)); 
    for (int i = 0; i < max+1; i++){
        X[i] = 0;  
    }
    for (int i = 0; i < n; i++){
        X[vet[i]]++; 
    }
    int j = 0; 
    int *B = (int*) malloc(sizeof(int)*n); 
    for (int i = 0; i < max+1; i++){
        while (X[i] != 0){
            B[j] = i; 
            X[i]--; 
            j++; 
        }
    }
    return B; 
}

int main(void){
    int vet[10]; 
    int n = 10; 
    int *B; 
    for (int i = 0; i < 10; i++){
        scanf("%d", &vet[i]); 
    }
    B = contagem_de_tipos(vet, n);
    for (int i = 0; i < 10; i++){
        printf("%d ", B[i]); 
    }
    free(B); 
    printf("\n\n"); 
}





