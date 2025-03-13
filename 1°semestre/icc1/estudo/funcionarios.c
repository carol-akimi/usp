/*Faça as declarações necessárias para criar um
tipo de dado para armazenar as seguintes
informações: os registros dos funcionários de
uma empresa. A empresa possui 150
empregados. Cada registro possui as
seguintes informações: número funcional,
nome, PCD, idade e salári*/

#include <stdio.h>

typedef struct{
    int num_f;
    char nome[50];
    char PCD; //S sim e N nao
    int idade;
    float salario;
}Funcionario;

int main (void){
    Funcionario Registros[150];
}