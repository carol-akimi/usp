#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

typedef struct {
    char *nome;
    char *CPF;
    int idade;
    float saldo; 
    float credito;
}pessoa; 

void leia(int n, pessoa *vet);
pessoa *aloca_vetor(int n);
char *aloca_string(int n);
void imprimir_dados(pessoa *vet, int n);
void imprimir_dividas(pessoa *vet, int n);
void desaloca(pessoa **vet, int n);

int main (void){
    int n;
    scanf("%d", &n); 
    pessoa *vet;
    vet = aloca_vetor(n); 
    leia(n, vet); 
    imprimir_dados(vet, n); 
    imprimir_dividas(vet, n);
    desaloca(&vet, n); 
    return 0; 

}

void leia(int n, pessoa *vet){
    for(int i = 0; i < n; i++){
    char nome[40], cpf[20]; 
    scanf(" %[^,], %[^,], ", nome, cpf); 
    int l = strlen(nome); 
    vet[i].nome = aloca_string(l); 
    vet[i].CPF = aloca_string(11); 
    strcpy(vet[i].nome, nome); 
    strcpy(vet[i].CPF, cpf); 
    scanf("%d, %f, %f", &vet[i].idade, &vet[i].saldo, &vet[i].credito);
    }
}

pessoa *aloca_vetor(int n){
    pessoa *vet; 
    vet = (pessoa*) malloc(sizeof(pessoa)*n);
    return vet;
}

char *aloca_string(int n){
    char *vet; 
    vet = (char*) malloc(sizeof(char)*(n+1));
    return vet; 
}

void imprimir_dados(pessoa *vet, int n){
    for(int i = 0; i < n; i++){
        printf("Dados da pessoa %d:\n", i+1);
        printf("Nome: %s\n", vet[i].nome);
        printf("CPF: %s\n", vet[i].CPF);
        printf("Idade: %d\n", vet[i].idade);
        printf("Saldo: %.2f\n", vet[i].saldo);
        printf("Credito: %.2f\n", vet[i].credito);
        printf("\n"); 
    }
}

void imprimir_dividas(pessoa *vet, int n){
    printf("Pessoas endividadas: ");
    int qtd = 0; 
    for(int i = 0; i < n; i++){
        if(vet[i].saldo < vet[i].credito){
            printf("\nNome: %s\n", vet[i].nome);
            printf("CPF: %s\n", vet[i].CPF);
            printf("Divida: %.2f\n", ((-1)*(vet[i].saldo - vet[i].credito))); 
            qtd++; 
        }
    }
    if(!qtd){
        printf("\nNenhuma pessoa endividada encontrada.\n"); 
    }
}

void desaloca(pessoa **vet, int n){
    for(int i = 0; i < n; i++){
        free((*vet)[i].nome); 
    }
    free(*vet); 
    *vet = NULL; 
}
