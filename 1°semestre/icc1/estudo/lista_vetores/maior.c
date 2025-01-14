#include <stdio.h> 
#include <stdlib.h> 
/* Desenvolva um programa que encontre o maior elemento em um vetor com n números reais,
positivos. n e os elementos devem ser fornecidos pelo usuário em uma etapa anterior à
procura pelo maior elemento. Imprima o maior elemento.
*/
void entrada(int n, int **vet);
int maior(int n, int *vet);


int main(void){
    int n; 
    int *vet = NULL;
    scanf("%d", &n);
    entrada(n, &vet);
    int m = maior(n, vet);
    printf("%d\n", m);

}

void entrada(int n, int **vet){
    (*vet) = (int*) malloc(sizeof(int)*n);//cuidado com a alocacao assim, precisa mandar por referencia
    for (int i = 0; i < n; i++){
        scanf("%d", &(*vet)[i]);
    }
}

int maior(int n, int *vet){
    int m = vet[0];
    for (int i = 1; i < n; i++){
        if(m < vet[i]){
            m = vet[i];
        }
    }
    return m;
}
