//falta alocar memoria 

#include <stdio.h>
#include "complexo.h"

int main() {
    // Create two complex numbers
    COMPLEXO *c1 = criar(3.0, 4.0);
    COMPLEXO *c2 = criar(1.0, 2.0);

    // Display the real and imaginary parts
    printf("Complexo c1: %.2f + %.2fi\n", real(c1), imag(c1));
    printf("Complexo c2: %.2f + %.2fi\n", real(c2), imag(c2));

    // Test addition
    COMPLEXO *sum = adicao(c1, c2);
    printf("Soma: %.2f + %.2fi\n", real(sum), imag(sum));

    // Test subtraction
    COMPLEXO *difference = subtracao(c1, c2);
    printf("Subtração: %.2f + %.2fi\n", real(difference), imag(difference));

    // Test if a complex number is real
    if (e_real(c1)) {
        printf("c1 é um número real.\n");
    } else {
        printf("c1 não é um número real.\n");
    }

    // Test assigning new values
    atribuir(c1, 5.0, 6.0);
    printf("Novo valor de c1: %.2f + %.2fi\n", real(c1), imag(c1));

    // Free memory
    liberar(&c1);
    liberar(&c2);
    liberar(&sum);
    liberar(&difference);

    return 0;
}
