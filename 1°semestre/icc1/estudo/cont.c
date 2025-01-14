/*
o programa recebe o nome do arquivo a ser lido pela linha de comando
tenta abrir o arquivo, se houver falha o progrma é abortado
vai ser impresso o numero do linha e a linha que corresponde a esse numero do arquivo texto
*/


#include <stdio.h> 
#include <stdlib.h>

int main(int argc, char *argv[]){
    FILE *fp;
    if((fp = fopen(argv[1], "r")) == NULL){
        printf("erro\n");
        exit(1);
    }
    char c; 
    int cont = 1; 
    c = getc(fp);
    while(c != EOF){
        putchar(c);
        if(c == '\n'){
            printf("%d\n", cont);
            cont++;
            putchar(c);
        }
        c = getc(fp);
    }
    fclose(fp);
    return 0; 
}   


