#include <stdio.h> 
#include <stdlib.h> 

void entrada(int n, char **vet);
void direito(int n, char *vet, char resposta1[500]);


int main(void){
    char *vet;
    char resposta1 [500];
    int n;
    scanf("%d", &n);
    entrada(n, &vet);
    direito(n, vet, resposta1);
    for (int i = 0; i < n; i++){
        printf("%c", resposta1[i]);
    }

}


void entrada(int n, char **vet){
    (*vet) = (char*) malloc(sizeof(char)*n);//cuidado com a alocacao assim, precisa mandar por referencia
    for (int i = 0; i < n; i++){
        scanf(" %c", &(*vet)[i]);
    }
}

void direito(int n, char *vet, char resposta1[500]){
    int cont = 0;
    int mid = n/2;
    resposta1[0] = vet[mid];
    for (int i = 1; i < n; i++){
        if(i % 2 == 1){
            cont++;
            resposta1[i] = vet[mid-cont];
        }else{
            resposta1[i] = vet[mid+cont]; 
        }
        
    }
    if(n % 2 == 0){
        resposta1[n-1] = vet[0];
    }
}