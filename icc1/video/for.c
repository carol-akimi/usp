#include <stdio.h> 

int main (void) {
    int soma = 0; /*armazenar o valor da soma*/

    int i = 1; 
    for ( ; i <= 10 ; ){
        soma += i; 
        i += 1; 
    }

    
    printf("A soma é %d\n", soma); 
}