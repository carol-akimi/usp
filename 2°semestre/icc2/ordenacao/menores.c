#include <stdio.h> 
#include <stdlib.h>
#include <string.h> 

void menores(int *vet, int n);
void contagem_tipos(int *vet, int n);

int main(void){
    int n;
    scanf("%d", &n);
    int *vet  = (int*)malloc(sizeof(int)*n);
    for (int i = 0; i < n; i++){
        scanf("%d", &vet[i]); 
    }
    //menores(vet, n); 
    contagem_tipos(vet, n); 
    for (int i = 0; i < n; i++){
        printf("%d ", vet[i]); 
    }
    printf("\n");
    free(vet);
    vet = NULL; 
}
/*
esse método é não estável (muda a ordem dos elementos)
complexidade: O(n²)
complexidade espaço: O(3n) (vetor vet, aux, ord) ->para espaço mantemos a constante 
*/
void menores(int *vet, int n){
    //armazena quantos elementos são menores que esse elemento
    int aux[n]; 
    int ord[n]; 
    //set todo mundo para 0
    memset(aux, 0, sizeof(int)*n); 
    for (int i = 0; i < n-1; i++){
        for (int j = i + 1; j < n; j++){
            if (vet[i] < vet[j]){ //if (vet[i] <= vet[j]) -> torna o método estável 
                aux[j]++; 
            }else{
                aux[i]++; 
            }
        }
    }
    //ordena os elementos 
    for (int i = 0; i < n; i++){
        ord[aux[i]] = vet[i]; 
    }
    //voltamos para o vetor vet 
    memcpy(vet, ord, sizeof(int)*n); 
}

/*
não tem o pior caso: vai fazer a mesma quantidade de operações sempre 
O(n*maior)
se maior for pequeno, a complexidade vai ser boa 
while dá O(n)
não pode ter número negativo 
aqui não faz comparação de pares de elementos do vetor 
*/
void contagem_tipos(int *vet, int n){
    int maior = -1; 
    for (int i = 0; i < n; i++){
        if (vet[i] > maior){
            maior = vet[i]; 
        }
    }
    int x[maior+1]; 
    memset(x, 0, sizeof(int)*(maior+1)); 
    for (int i = 0; i < n; i++){
        x[vet[i]]++; 
    }

    int j = 0; 
    for (int i = 0; i < maior + 1; i++){
        while(x[i] > 0){
            vet[j] = i; 
            j++; 
            x[i]--; 
        }
    }
}