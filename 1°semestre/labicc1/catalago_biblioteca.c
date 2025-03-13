#include <stdio.h> 
#include <stdlib.h> 
#include <string.h>

typedef struct Livro{
    char titulo[100]; 
    char autor[50]; 
    int ano; 
}livro; 

void leia(int N, livro *vet);
void separar(char *entrada, livro *vet, int i);
int verificar(int N, livro *vet, livro *vet2, int *quantidade);
void imprimir(livro *vet2, int tam, int *quantidade);
char aloca(int tam);

int main(void){
    int N;
    livro *vet, *vet2; 
    scanf("%d", &N); 
    vet = aloca_vet(N); 
    vet2 = aloca_vet(N); 
    int *quantidade;
    quantidade = (int*) malloc(sizeof(int)*N); 
    int tam = verificar(N, vet, vet2, quantidade); 
    imprimir(vet2, tam, quantidade); 
    free(vet);
    vet = NULL;
    free(vet2); 
    vet2 = NULL; 
}

void leia(int N, livro *vet){
    for (int i = 0; i < N; i++){
        char *entrada; 
        aloca(165); 
        fgets(entrada, sizeof(entrada), stdin); 
        separar(entrada, vet, i); 
    }
}

void separar(char *entrada, livro *vet, int i){ 
    char palavras[3][100]; 
    char *token = strtok(entrada, ",");
    int cont = 0;
    while (token != NULL && cont < 3){
        strcpy(palavras[cont], token); 
        token = strtok(NULL, ",");
        cont++; 
    }
    strcpy(vet[i].titulo, palavras[0]); 
    strcpy(vet[i].autor, palavras[1]); 
    vet[i].ano = atoi(palavras[2]);  

}

int verificar(int N, livro *vet, livro *vet2, int *quantidade){
    int tam = 0; 
    int cont = 0; 
    for (int i = 0; i < N; i++){
        if(!strcmp(vet[i].titulo, vet2[cont].titulo)){
            vet2[cont] = vet[i]; 
            quantidade[tam] += 1; 
            tam += 1;
        }
    }
    return tam; 
}



void imprimir(livro *vet2, int tam, int *quantidade){
    printf("Catalago de Livros:\n");
    for (int i = 0; i < tam; i++){
        printf("Livro %d:\n", i+1);
        printf("Titulo: %s\n", vet2[i].titulo);
        printf("Autor: %s\n", vet2[i].autor);
        printf("Ano: %d\n", vet2[i].ano);
        printf("Quantidade: %d\n", quantidade[i]);
    }   
}

livro *aloca_vet(int tam){
    livro *p; 
    p = (livro*) malloc(tam * sizeof(livro)); 
    return p;  
}

char aloca(int tam){
    char *p;
    p = (char*) malloc(sizeof(char) * tam); 
    return p; 
}