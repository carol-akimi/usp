#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

typedef struct {
    char *nome;
    int CPF;
    int idade;
    float saldo; 
    float credito;
}pessoa; 

int main (void){
    int n;
    scanf("%d", &n); 
    pessoa *vet;
    vet = aloca_vetor(n); 
    leia(n, vet); 
    imprimir_dados(vet, n); 


}

void leia(int n, pessoa *vet){
    char nome[60]; 
    for (int i = 0; i < n; i++){
        scanf(" %[^,]s", nome); 
        int l = strlen(nome); 
        vet[i].nome = aloca_string(l); 
        strcpy(vet[i].nome, nome); 
        scanf(" %[^,]d", vet[i].CPF);
        scanf(" %[^,]d", vet[i].idade);
        scanf(" %[^,]f", vet[i].saldo);
        scanf(" %[^,]f", vet[i].credito);
    }
}
pessoa *aloca_vetor(int n){
    pessoa *vet; 
    vet = (pessoa*) malloc(sizeof(pessoa)*n);
    return vet;
}

char *aloca_string(int n){
    char *vet; 
    vet = (char) malloc(sizeof(char)*n);
    return vet; 
}

void imprimir_dados(pessoa *vet, int n){
    for(int i = 0; i < n; i++){
        printf("Dados da pessoa %d\n", i+1);
        printf("Nome: %s\n", vet[i].nome);
        printf("CPF: %d\n", vet[i].CPF);
        printf("Idade: %d\n", vet[i].idade);
        printf("Saldo: %f\n", vet[i].saldo);
        printf("Credito: %f\n", vet[i].credito);
    }
}
void imprimir_dividas(pessoa *vet, int n){
    printf("Pessoas endividadas: \n");
    for(int i = 0; i < n; i++){
        if(vet[i].saldo < vet[i].credito){
            printf("Nome: %s\n", vet[i].nome);
            printf("CPF: %d\n", vet[i].CPF);
            printf("Divida: %f\n", -(vet[i].credito - vet[i].saldo)); 
        }
    }
}

void desaloca(pessoa **vet, int n){
    for(int i = 0; i < n; i++){
        free((*vet[i]).nome); 
    }
    free(vet); 
}
