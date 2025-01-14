#include <stdio.h> 
#include <stdlib.h> 
#define MAX 100000000


/*a stack nao tem espaco dependendo do tamanho do vetor */
void ola(){
    int vet[MAX]; 
    for (int i = 0; i < MAX; i++){
        vet[i] = i; 
    }
    
}

void ola2(){
    int *vet = (int*) malloc(MAX * sizeof(int));
    for (int i = 0; i < MAX; i++){
        vet[i] = i; 
    }
    free(vet); 

}

//aloca um a um os elementos de um vetor de interiros 
int * ola3(int tam){
    int *vet = NULL; //inicialmente vet nao tem elementos 
    // um a um, aloca espaco no vetor e acrescenta o elemento nele 
    /*isso nao e uma boa, pois a cada vez copia e repete*/
    for (int i = 0; i < tam; i++){
        vet = (int*)realloc(vet, (i+1)*sizeof(int)); //i+1 porque o i comeca com 0 
        vet[i] = i; 
    }
    return vet; 

}

void imprimeVet (int tam, int *v){
    for (int i = 0; i < tam; i++){
        printf("%d\n", v[i]); 
    }
    printf("\n"); 
}


int main (int argc, char const *argv[]){
    int tam = 10; 
    int *vet = ola3(tam); 
    imprimeVet(tam, vet); 
}
