#include <stdio.h> 
#include <stdlib.h> 

void leia(int n, int *p); 
void ordem(int tam, int *vet);
int *aloca(int n); 
int interseccao(int tam_A, int tam_B, int **inter, int *a, int *b);
int uniao(int tam_A, int tam_B, int **uni, int *a, int *b); 
int sub(int tam_inter, int tam_uni, int *uni, int *inter, int **conta);
void imprimir(int *vet, int n);
void desaloca(int **vet);


int main(void){
    int n, m;
    int *a, *b; /*a eh o conjunto A e b eh o conjunto B*/
    int *uni, *inter; /*uni eh a uniao dos conjuntos e inter eh a interseccao dos conjuntos*/
    int *conta; 
    scanf("%d", &n); 
    a = aloca(n); 
    leia(n, a); 
    scanf("%d", &m); 
    b = aloca(m); 
    leia(m, b); 
    ordem(n, a); 
    ordem(m, b); 
    uni = aloca(n); 
    int tam_uni = uniao(n, m, &uni, a, b);
    ordem(tam_uni, uni);  
    inter = NULL; 
    int tam_inter = interseccao(n, m, &inter, a, b); 
    conta = NULL; 
    int tam_sub = sub(tam_inter, tam_uni, uni, inter, &conta); 
    ordem(tam_sub, conta); 

    printf("conjunto A: ");
    imprimir(a, n); 
    printf("conjunto B: ");
    imprimir(b, m);
    printf("A uniao B: ");
    imprimir(uni, tam_uni); 
    printf("(A uniao B) - (A interseccao B): ");
    imprimir(conta, tam_sub); 
    desaloca(&a);
    desaloca(&b);
    desaloca(&inter);
    desaloca(&uni);  
}

void leia(int n, int *p){
    for(int i = 0; i < n; i++){
        scanf("%d", &p[i]); 
    }
}

void ordem(int tam, int *vet){
    for(int i = 0; i < tam-1; i++){
        for(int j = 0; j < tam - i - 1; j++){
            if (vet[j] > vet[j + 1]) {
                int temp = vet[j];
                vet[j] = vet[j + 1];
                vet[j + 1] = temp;
            }
        }
    }
}

int *aloca(int n){
    int *p;
    p = (int *) malloc(n * sizeof(int)); 
    return p; 
}

int uniao(int tam_A, int tam_B, int **uni, int *a, int *b){
    int tam_uni = tam_A;
    for(int i = 0; i < tam_A; i++){
        (*uni)[i] = a[i]; 
    }
    for (int i = 0; i < tam_B; i++){
        int igual = 0;
        for (int j = 0; j < tam_A; j++){
            if(b[i] == a[j]){
                igual = 1; 
                break;
            }
        }
        if(!igual){
            (*uni) = realloc(*uni, (tam_uni + 1) * sizeof(int));
            (*uni)[tam_uni] = b[i]; 
            tam_uni += 1; 
        }
    }
    return tam_uni; 
}

int interseccao(int tam_A, int tam_B, int **inter, int *a, int *b){
    int tam_inter = 0; 
    for (int i = 0; i < tam_A; i++){
        for (int j = 0; j < tam_B; j++){
            if(a[i] == b[j]){
                *inter = realloc(*inter, (tam_inter+1)*sizeof(int)); 
                (*inter)[tam_inter] = a[i]; 
                tam_inter++; 
            }
        }
    }
    return tam_inter; 
}


int sub(int tam_inter, int tam_uni, int *uni, int *inter, int **conta){
    int tam_conta = 0;
    for (int i = 0; i < tam_uni; i++){
        int igual = 0; 
        for (int j = 0; j < tam_inter; j++){
            if(uni[i] == inter[j]){
                igual += 1;
            }
        }
        if(!igual){
            *conta = realloc(*conta, (tam_conta+1)*sizeof(int)); 
            (*conta)[tam_conta] = uni[i]; 
            tam_conta++; 
        }
    }
    return tam_conta; 
}

void imprimir(int *vet, int n){
    if(n == 0){
        printf("vazio\n"); 
    }else{
        for (int i = 0; i < n; i++){
        printf("%d ", vet[i]); 
    }
    printf("\n"); 
    }
}

void desaloca(int **vet){
    free(*vet); 
    *vet = NULL; 
}