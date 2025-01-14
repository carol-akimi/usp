#include <stdio.h> 

int main(void){
    int n; 
    int cont = 0;
    int vet[10000], tam=0;
    int fib[19]; fib[0] = 1; fib[1] = 1;
    char comando;

    while(1){
        scanf("%d", &n);
        if(n == 1){
            break;
        }else{
            vet[cont] = n;
            cont++;
            tam ++;
        }
    }

    scanf(" %c", &comando);
    if(comando == 'a'){
        for(int i = 0; i < tam-1; i++){
            for(int j = 0; j < tam - i - 1; j++){
                if (vet[j] > vet[j + 1]) {
                    int temp = vet[j];
                    vet[j] = vet[j + 1];
                    vet[j + 1] = temp;
                }
            }
        }   
        printf("vetor ordenado:");
        for(int i = 0; i < tam; i++){
            printf("%d ", vet[i]);
        }printf("\n");

    }else if(comando == 'b'){
        printf("Numeros de Fibonacci:");
        for(int j = 0; j < tam; j++){
            for(int i = 2; i < 19; i++){
                fib[i] = fib[i-1] + fib[i-2];
                if(vet[j]==fib[i]){
                    printf("%d ", vet[j]);
                    break;
                }
            }

        }

    }else if(comando == 'c'){
        printf("Vetor maiusculo:");
        for(int i = 0; i < tam; i++){
            printf("%c ", (vet[i]-32));
        }
        printf("\n");

    }else{
        printf("Comando inexistente\n");

    }

    return 0;
}