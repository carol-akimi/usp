#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char nome[20]; 
    int farinha, ovos, oleo, acucar, chocolate; 
}receita; 

int *aloca_vet(int n);
receita *realoca_vetor(int n, receita *livro); 
void R (int *cad, receita **livro);
void C(int *ingredientes);
void F(int *ingredientes, receita *livro, int cad);
void S(int *ingredientes, int cad);

int main (void){
    int *ingredientes; 
    ingredientes = aloca_vet(5); 
    int cad = 0; //vai armazenar quantas receitas foram cadastradas 
    receita *livro = (receita*) malloc(sizeof(receita)*5); 
    do{
    char c; 
    scanf(" %c", &c);  
    switch(c){
        case 'R':
        R(&cad, &livro); 
        break; 

        case 'C':
        C(ingredientes); 
        break; 

        case 'F':
        F(ingredientes, livro, cad); 
        break;

        case 'S':
        S(ingredientes, cad); 
        return (0); 

        default:
        printf("Codigo invalido\n"); 
        break; 
    }
    }while(1); 
}

int *aloca_vet(int n){
    int *vet; 
    vet = (int*) malloc((sizeof(int)*n)); 
    return vet; 
}

receita *realoca_vetor(int n, receita *livro){ //vai realocar o vetor de struct a cada 5 receitas registradas 
    int i = 5; 
    if(n >= i){ 
        i += 5; 
        livro = (receita*) realloc(livro, sizeof(receita) * i);
    }
    return livro; 
}

void R (int *cad, receita **livro){ //registra novas receitas 
    *livro = realoca_vetor(*cad, *livro); 
    scanf(" %s %d %d %d %d %d", (*livro)[*cad].nome, &(*livro)[*cad].farinha, &(*livro)[*cad].ovos, &(*livro)[*cad].oleo, &(*livro)[*cad].acucar, &(*livro)[*cad].chocolate); 
    (*cad)++;
}

void C(int *ingredientes){
    for(int i = 0; i < 5; i++){
        int p; 
        scanf("%d ", &p);
        ingredientes[i] += p;  
    }
}

void F(int *ingredientes, receita *livro, int cad){ //receita eh o tipo, livro é o vetor
    int posicao;
    scanf(" %d", &posicao);
    if(posicao >= cad){
        printf("Receita nao encontrada!\n");
    }else{
        if(ingredientes[0] >= livro[posicao].farinha && ingredientes[1] >= livro[posicao].ovos && ingredientes[2] >= livro[posicao].oleo 
        && ingredientes[3] >= livro[posicao].acucar && ingredientes[4] >= livro[posicao].chocolate){
            printf("%s feita com sucesso!\n", livro[posicao].nome); 
            ingredientes[0] -= livro[posicao].farinha;
            ingredientes[1] -= livro[posicao].ovos;
            ingredientes[2] -= livro[posicao].oleo;
            ingredientes[3] -= livro[posicao].acucar;
            ingredientes[4] -= livro[posicao].chocolate;
        }else{
            if(ingredientes[0] < livro[posicao].farinha){
                printf("Farinha insuficiente\n");
            }
            else if(ingredientes[1] < livro[posicao].ovos){
                printf("Ovos insuficientes\n");
            }
            else if(ingredientes[2] < livro[posicao].oleo){
                printf("Oleo insuficiente\n");
            }
            else if(ingredientes[3] < livro[posicao].acucar){
                printf("Acucar insuficiente\n");
            }else{
                printf("Chocolate insuficiente\n");
            }
        }
    }
}
        
void S(int *ingredientes, int cad){
    printf("Quantidade no estoque:\n");
    int num[5]={3, 4, 0, 2, 1};
    char ing[5][10]= {"Acucar", "Chocolate", "Farinha", "Oleo", "Ovos"};
    for(int i = 0; i < 5; i++){
        printf("%s: %d\n", ing[i], ingredientes[num[i]]); 
    }
    printf("Receitas cadastradas: %d\n", cad);
}