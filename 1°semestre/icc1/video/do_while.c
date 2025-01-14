#include <stdio.h> 

int main (void) {
    int soma = 0; 
    int i = 1; 
    do {
        soma += i; 
        i += 1; 
    } while (i <= 10); 
    printf("A soma é %d\n", soma); 
}