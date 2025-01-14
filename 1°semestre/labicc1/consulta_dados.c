#include <stdio.h> 
#include <stdlib.h> 

int *aloca_numeros(int n); 
int primo(int n); 
int decriptacao(int N); 


int main(void) {
    int N; 
    int *ip; int *cod; 
    scanf("%d", &N); //N qtd de produtos 
    if (N == 0){
        printf("Sem produtos a serem cadastrados\n"); 
    }else{
        int tam = decriptacao(N); 
        printf("%d", tam); 
        

    }

}

int *aloca_numeros(int n){ //aloca os vetores para guardar os numeros
    int *p; 
    p = (int *) malloc(n*sizeof(int)); 
    return p; 
}

int decriptacao(int N) { //N eh o codigo 
    int tam = 0; 
    for(int i = 2; i < N; i++){
        if(primo(i) == 1){
            if(N == i){
                tam = N;
            }else{
                if(N % i == 0){
                    while(N % i == 0){
                        N = N/i; 
                    }
                    tam += i; 
                }else{
                    continue; 
                }
            }
        }
    }  
    return tam;  
}

int primo(int n){
    int div = 0;
    for(int j = 1; j <= n; j++){
        if(n % j == 0){
        div += 1;
        }
    }
    if(div == 2){
        return (1);
    }else{
        return (0); 
    }
}
