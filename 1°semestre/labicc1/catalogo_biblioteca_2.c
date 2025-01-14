#include <stdio.h> 
#include <stdlib.h>
#include <string.h>


/*
O programaa recebe um numero N de livros a serem cadastrados. Cada livro é indicado pelo 
título, autor e o ano de publicação
*/

typedef struct { //struct livro que vai armazenar as informações 
    char *titulo;
    char *autor;
    int ano;
    int quantidade;
}livro;

void entrada(int N, livro *vet_livros, int *total);
void imprimir (int N, livro *vet_livros, int total);
char *aloca_s(int tamanho);
livro *aloca_l(int tamanho);

int main (void){
    livro *vet_livros; //vetor com elementos do tipo livro que vai armazenar os livros
    int N; 
    int total = 0; 
    scanf("%d", &N);
    vet_livros = aloca_l(N);
    printf("degub\n");
    entrada(N, vet_livros, &total);
    printf("degub\n");
    imprimir(N, vet_livros, total);
    for (int i = 0; i < (N-total); i++){
        free(vet_livros[i].titulo);
        vet_livros[i].titulo = NULL;
        free(vet_livros[i].autor);
        vet_livros[i].autor = NULL;
    }
    free(vet_livros);
    vet_livros = NULL; 

    return 0; 
}


void entrada(int N, livro *vet_livros, int *total){ //vai ler os dados de entrada (livros)

    for (int i = 0; i < N; i++) {
        char titulo[105], autor[55];
        scanf(" %[^,], %[^,], %d", titulo, autor, &vet_livros[i].ano); 
        
        if (i > 0){
            for (int j = (i-1); j >= 0; j--){
                if (strcmp(titulo, vet_livros[j].titulo) == 0){ //se o livro já está registrado, basta acrescentar uma unidade
                    (vet_livros[j].quantidade)++;
                    (*total)++; //livros que estão duplicados 
                    break;
                }else{
                    vet_livros[i].titulo = aloca_s(strlen(titulo)+1);
                    vet_livros[i].autor = aloca_s(strlen(autor)+1);
                    strcpy(vet_livros[i].titulo, titulo);
                    strcpy(vet_livros[i].autor, autor);
                    vet_livros[i].quantidade++; 
                    break;
                }
            } 
        }else{
            vet_livros[i].titulo = aloca_s(strlen(titulo)+1);
            vet_livros[i].autor = aloca_s(strlen(autor)+1);
            strcpy(vet_livros[i].titulo, titulo);
            strcpy(vet_livros[i].autor, autor);
            vet_livros[i].quantidade++; 

        }  
        

   }
}



void imprimir (int N, livro *vet_livros, int total){ //vai imprimir as informações 
    printf("Catalogo de Livros:\n");
    for (int i = 0; i < (N-total); i++){
        printf("Livro %d:\n", i+1);
        printf("Titulo: %s\n", vet_livros[i].titulo);
        printf("Autor: %s\n", vet_livros[i].autor);
        printf("Ano: %d\n", vet_livros[i].ano);
        printf("Quantidade: %d\n", vet_livros[i].quantidade);

    }
     
}

char *aloca_s(int tamanho){
    char *string; 
    string = (char*) malloc(sizeof(char) * tamanho);
    return string;
}

livro *aloca_l(int tamanho){
    livro *vet;
    vet = (livro*) malloc(sizeof(livro) * tamanho);
    return vet;
}
