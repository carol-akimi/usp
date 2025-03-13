#include <stdio.h>

int main (void){
    char a[] = "abc"; /*um vetor com 3 caracteres*/
    char *p;
    int i;
    p = a;
    for (i = 0; i < 3; ++i)
    printf("%c\n", *p++);
    printf("a = %s\n", a);
    p = a;
    for (i = 0; i < 3; ++i)
    printf("%c\n", (*p)++);
    printf("a = %s\n", a);
}