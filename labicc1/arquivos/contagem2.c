#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>



void minusculo(char *str) {
    while (*str) {
        *str = tolower((unsigned char)*str);
        str++;
    }
}

int valido(char c) {
    if ((int) c == 32 || c == 44 || c == 46){
        return 1; //e um caracter valido
    }
    else{
        return 0;
    }
}

int main() {
    char arquivo[15];
    char palavra[15];
    char linha[1024];
    FILE *fp;
    int qtd = 0;
    
    scanf("%s", arquivo);

    scanf("%s", palavra);

    minusculo(palavra);
    int tam_p = strlen(palavra);

    if ((fp = fopen(arquivo, "r"))==NULL){
        printf("erro");
        exit(1);
    }

    while (fgets(linha, sizeof(linha), fp)) {
        char *ptr = linha;
        minusculo(linha);
        while ((ptr = strstr(ptr, palavra)) != NULL) {
    
            if ((ptr == linha || valido(*(ptr - 1))) == 1&&
                valido(*(ptr + tam_p)) == 1) {
                qtd++;
            }
            ptr += tam_p;
        }
    }

    fclose(fp);
    fp = NULL;
    printf("quantidade: %d", qtd);
    
    return 0;
}
