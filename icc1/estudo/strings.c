#include <stdio.h> 
#include <stdlib.h> 
#include <string.h>

int main (void){
    char *s;
    char temp[1000];
    scanf(" %[^\n]s", temp);
    int cont = 0;
    while (temp[cont] != '\0'){
        cont++;
    }
    s = (char*) malloc(sizeof(char)*cont);
    strcpy(s, temp);
    printf("%s\n", s);
    printf("%d", cont);
}

/*
strcpy - copia s2 em s1 
strcat
strlen
strcmp
*/