#include <stdio.h> 

//estamos usando o fato de que os primos maiores que 3 podem ser escritos como 6k+/-1

int primo(long long n){
    if(n == 2 || n == 3){ //os dois primeiros casos 
        return 1; //1 quer dizer que é primo
    }
    if(n <= 1 || n % 2 == 0 || n % 3 == 0){
        return 0; //0 não é primo 
    }
    for(long long i = 5; i * i <= n; i += 6){
        if(n % i == 0 || n % (i+2) == 0){
            return 0;
        }
    }
    return 1;
}

int main(void){
    long long Q; long long N;
    long long vet[1000001];
    scanf("%lld", &Q);
    for(long long i = 0; i < Q; i++){
        scanf("%lld", &N);
        vet[i]=N;
    }
    for(long long i = 0; i < Q; i++){
        if(primo(vet[i])==1){
            printf("Sim\n");
        }else{
            printf("Nao\n");
        }
    }
    return 0;
}