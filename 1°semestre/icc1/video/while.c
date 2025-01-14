#include <stdio.h> 

int main (void) {
    int soma = 0;  /*valor da soma vai ser armazenado*/
    int i = 1; //inicialização
    while (i <= 10) { //condição
        soma += i; //comando
        i += 1; //incremento
    }
    printf("A soma é %d\n", soma); 
    return (0);
} 
