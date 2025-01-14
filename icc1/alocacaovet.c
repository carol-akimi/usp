#include <stdio.h> 
#include <stdlib.h> 

void entrada(double *vet, int tam);
double *aloca(int tam); 
void imprimir(double *vet, int tam);

int main (void){
    double *vet;
    int tam; 

    scanf("%d", &tam); //leitura do tam do vetor

    vet = aloca(tam); //funcao que vai alocar um vetor de tamanho tam na heap
    /*pode fazer referencia (o vet vai apontar para o espaco alocado) 
    ou podemos criar um vetor local e retornar esse vetor*/
    //estamos fazendo a segunda opçao
    //vet vai receber o endereco de p 

    entrada(vet, tam); //vai preencher os vetores com os valores 

    imprimir(vet, tam); 

    free(vet); 
    vet = NULL; 
    
    return(0); 
}

double *aloca(int tam){
    double *p;
    p = (double*) malloc(tam * sizeof(double)); 
    if (p == NULL){
        exit(1); //a alocacao nao deu certo
    }
    return (p); 
}
void entrada(double *vet, int tam){
    for(int i = 0; i < tam; i++){
        scanf("%lf", &vet[i]); 
    }
}
void imprimir(double *vet, int tam){
    for(int i = 0; i < tam; i++){
        printf("%lf\n", vet[i]); 
    }
}

/*
aloca(&vet, tam); 
void aloca(double **vet, int tam){
    *vet = (double*) malloc(tam * sizeof(double))

}*/
