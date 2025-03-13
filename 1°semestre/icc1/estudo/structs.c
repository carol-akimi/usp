#include <stdio.h> 

/*Crie um tipo de dado chamado “fracao” que
conterá o numerador e o denominador de
uma fração. No seu programa, peça que o
usuário digite os valores (numerador e
denomidador) de duas frações, e em seguida,
retorne a soma dessas duas frações, no
formato a/b*/

typedef struct{
    int nume;
    int deno;
}fracao;

fracao soma(fracao a, fracao b);

int main (void){
    fracao a, b;
    scanf("%d %d", &a.nume, &a.deno);
    scanf("%d %d", &b.nume, &b.deno);
    fracao r = soma(a, b);
    printf("A soma é: %d/%d\n", r.nume, r.deno);

}

fracao soma(fracao a, fracao b){
    fracao resposta;
    resposta.nume = (a.nume*b.deno)+(a.deno*b.nume);
    resposta.deno = a.deno * b.deno;
    return resposta;
}