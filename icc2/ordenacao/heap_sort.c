#include <stdio.h>
#include <stdlib.h> 

/*
int tam_heap = o tamanho que estamos considerando na heap
i -> elemento que queremos organizar 
O(logn)
*/
void rearranjar_heap(int v[], int i, int tam_heap){
    int esq, dir, maior, aux;
    esq = 2*i + 1;
    dir = 2*i + 2; 
    maior = i; 
    //encontra o maior elemento entre filho da esquerda e filho da direita 
    if (esq < tam_heap && v[esq] > v[maior]){
        maior = esq; 
    }
    if (dir < tam_heap && v[dir] > v[maior]){
        maior = dir; 
    }
    if(maior != i){
        aux = v[maior];
        v[maior] = v[i];
        v[i] = aux;
        rearranjar_heap(v, maior, tam_heap); 
    }
}

/*
O(n)
*/
void construir_heap(int v[], int n){
    //inicia em (n/2)-1, pois é o último nó antes das folhas 
    for (int i = (n/2) - 1; i >= 0; i--){
        rearranjar_heap(v, i, n); 
    }
    
}

void heap_sort(int v[], int n){
    construir_heap(v, n); 
    int tam_heap = n;
    for (int i = 0; i < n; i++){
        int aux = v[0];
        v[0] = v[tam_heap-1];
        v[tam_heap-1] = aux; 
        tam_heap--;
        rearranjar_heap(v, 0, tam_heap); 
    }
}

