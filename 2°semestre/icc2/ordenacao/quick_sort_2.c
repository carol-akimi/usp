#include <stdio.h> 
#include <stdlib.h> 

void quick_sort(int *v, int inicio, int fim);

int main(void){
    int n;
    scanf("%d", &n);
    int *vet  = (int*)malloc(sizeof(int)*n);
    for (int i = 0; i < n; i++){
        scanf("%d", &vet[i]); 
    }
    quick_sort(vet, 0, n-1);
    for (int i = 0; i < n; i++){
        printf("%d, ", vet[i]); 
    }
    printf("\n");
    free(vet);
    vet = NULL; 
}

//estava colocando em ordem decrescente fique atenta 
void quick_sort(int *v, int inicio, int fim){
    int i = inicio; 
    int j = fim; 
    int pivo = v[(inicio+fim)/2]; 
    do {
        while(v[i] < pivo) i++; //ate encontrar um elemento maior que o pivo
        while(v[j] > pivo) j--; //ate encontrar um elemento menos que o pivo
        if (i <= j){ 
            //realiza a troca 
            int aux; 
            aux = v[i];
            v[i] = v[j];
            v[j] = aux;
            i ++;
            j--;
        }
    } while(i < j); //quando i e j se cruzam, chegamos ao final 
    //chamamos a recursão para resolver o problema nos problemas subdivididos 
    //os indices devem ser coerentes com o tamanho do vetor 
    if (j > inicio) 
        quick_sort(v, inicio, j);
    if (i < fim)
        quick_sort(v, i, fim);
}

