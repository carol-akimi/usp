#include <stdio.h> 
#include <stdlib.h> 

/*
é estável (não inverte se existem dois núemros iguais)
pior caso: O(n²) - elementos ordenados inversamente, faz o shift de todos 
melhor caso: O(n) - o vetor já está ordenado percorre o for externo, 
não entra no loop interno, porque aux nunca é menor que vet[j]
se já sabemos se o vetor está quase ordenado, o algoritmo se torna bem eficiente 
*/
void insercao(int *vet, int n){
    int aux; 
    int j; 
    for (int i = 1; i < n; i++){
        aux = vet[i]; 
        for (j = i-1; j >= 0 && aux < vet[j]; j--){
            //faz um "shift"
            vet[j+1] = vet[j]; 
        }
        vet[j+1] = aux; 
    }
}

/*
permite a troca de elementos distantes 
elementos separados por h posições 
facilita a última ordenação (h=1), entra no melhor caso da inserção 
simples, que é um vetor quase ordenado 
a cada iteração, h deve ser decrementado -> o último incremento dever ser 1
para acessar o elemento:
ex.: o terceiro elemento (i = 1) do segundo conjunto (j = 2)
x[(i-1)h + j-1]
não estável
*/
void shell(int *vet, int n, int incrementos[], int n_inc){
    int aux; 
    int j, h; 
    for (int k = 0; k < n_inc; k++){
        h = incrementos[k]; 
        for (int i = h; i < n; i++){
            aux = vet[i]; 
            for (j = i-h; j >= 0 && aux < vet[j]; j--){
                //faz um "shift"
                vet[j+h] = vet[j]; 
            }
            vet[j+h] = aux; 
        }
    }
        
}


int main(void){
    int n;
    int incrementos[] = {5, 3, 1}; //o ultimo precisa ser 1
    scanf("%d", &n);
    int *vet  = (int*)malloc(sizeof(int)*n);
    for (int i = 0; i < n; i++){
        scanf("%d", &vet[i]); 
    }
    insercao(vet, n); 
    for (int i = 0; i < n; i++){
        printf("%d, ", vet[i]); 
    }
    printf("\n");
    free(vet);
    vet = NULL; 
}