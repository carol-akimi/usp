#include <stdio.h> 
#include <string.h> 
#include <stdlib.h>

void leia(char **vet);
void verificar(char *A, char *B, char *parametro);
char *aloca_string(int n); 



int main (void){
    char *A;
    char *B;
    char *parametro; 
    leia(&A); 
    leia(&B); 
    leia(&parametro); 
    verificar(A, B, parametro);
    free(A); 
    free(B);
    free(parametro); 

}

void leia(char **vet){
    char string[130]; 
    fgets(string, 130, stdin);
    int l = strlen(string); 
    if (l > 0 && string[l - 1] == '\n') {
            string[l - 1] = '\0';
    }
    (*vet) = aloca_string(l+1);
    strcpy((*vet), string); 
}

void verificar(char *A, char *B, char *parametro){
    char *p; char *q; char *z;
    z = A; 
    p = strstr(A, parametro); 
    q = strstr(B, parametro); 
    if(p != NULL && q!= NULL){
        for (int i = 0; i < strlen(A); i++){
            if(z == p){
                break; 
            }else{
                putchar(*z);
                z++; 
            }
        }
        q += strlen(parametro)+1; 
        for (int i = 0; i < strlen(B); i++){
            putchar(*q);
            q++; 
        }
    }
    else if (q == NULL){
        for (int i = 0; i < strlen(A); i++){
            if(z == p){
                break; 
            }else{
                putchar(*z);
                z++; 
            }
        }
    }
    else if (p == NULL && q == NULL){
        printf("%s\n", A); 
    }
    else {
        printf("%s ", A);
        q += strlen(parametro)+1; 
        for (int i = 0; i < strlen(B); i++){
            putchar(*q);
            q++; 
        }
    }

}



char *aloca_string(int n){
    char *vet; 
    vet = (char*) malloc(sizeof(char)*n);
    return vet; 
}

