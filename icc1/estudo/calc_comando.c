#include <stdio.h> 

int main (int argc, char *argv[]){
    int op1, op2;
    op1 = atoi(argv[1]);
    op2 = atoi(argv[3]);

    switch (argv[2][0]){
        case '+':
        printf("Soma: %d\n", op1+op2);
        break;
        case '-':
        printf("Subtracao: %d\n", op1-op2);
        break;
        case '/':
        printf("Divisao: %d\n", op1/op2);
        break;
        case '*':
        printf("Multiplicacao: %d\n", op1*op2);
        break;
    }
}