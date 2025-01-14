#include <stdio.h>
#include <stdlib.h> 
#include <string.h>


typedef struct{
    char nome[50];
    int idade;
    float altura;
    char profissao[100];
}pessoa;

void leia(pessoa *vet, int n);
void altura(pessoa *vet, int n);


int main(void){
    int n; 
    scanf("%d", &n);
    pessoa *vet;
    vet = (pessoa*) malloc(sizeof(pessoa)*n);
    leia(vet, n);
    altura(vet, n); //vai imprimir aqueles que tem altura maior que a da media 
    free(vet);
    vet = NULL;
    return 0;
}

void leia(pessoa *vet, int n){
    for (int i = 0; i < n; i++){
        scanf(" %s %d %f %s", vet[i].nome, &vet[i].idade, &vet[i].altura, vet[i].profissao);
    }
}

void altura(pessoa *vet, int n){
    float soma = 0; 
    for (int i = 0; i < n; i++){
        soma += vet[i].altura;
    }
    float media = soma/n; 
    printf("Pessoas mais altas que a média: \n");
    for (int i = 0; i < n; i++){
        if(vet[i].altura > media){
            printf("%s\n", vet[i].nome);
        }
    }
}