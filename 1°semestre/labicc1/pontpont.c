#include <stdio.h>

int main(void){
    int n, *p, **q;
    scanf("%d", &n);
    printf("Valor inicial da variavel: %d\n", n);
    p = &n;
    printf("Valor do ponteiro antes do incremento: %d\n", *p);
    *p += 10;
    printf("Valor do ponteiro depois do incremento: %d\n", *p);
    q = &p;
    printf("Valor do ponteiro para ponteiro antes do incremento: %d\n", **q);
    **q += 10;
    printf("Valor do ponteiro para ponteiro depois da mudanca: %d\n", **q);
    printf("Valor final da variavel: %d\n", n);
    return 0;
}