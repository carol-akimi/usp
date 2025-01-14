#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 

int valido(char *tudo, long long tamanho, char *p, int len);
void minuscula(char *string);


int main(void){
    FILE *fp;
    char arquivo[15];
    scanf("%s", arquivo);
    if((fp= fopen(arquivo, "r"))==NULL){
        printf("erro");
        exit(1);
    }
    char palavra[15];
    scanf("%s", palavra);
    int qtd = 0; 
    long long tamanho = 0;
    char c;
    c = fgetc(fp);
    while(c != EOF){
        tamanho++;
        c = fgetc(fp);
    }
    char *tudo = (char*) malloc(sizeof(char) * tamanho+1);
    fseek(fp, 0, SEEK_SET); //volta o ponteiro para o inicio do arquivo
    fread(tudo, 1, tamanho, fp);
    minuscula(tudo);
    char *p;
    int len = strlen(palavra);
    p = strstr(tudo, palavra);
    while(p != NULL){
        if (valido(tudo, tamanho, p, len) == 1){
        qtd++;
        p += len;
        p = strstr(tudo, palavra);
        }
    }
    printf("quantidade: %d", qtd);

}


void minuscula(char *string){
    int i = strlen(string);
    while(i != 0){
        *string = tolower((unsigned char)*string);
        i--;
    }
}

int valido(char *tudo, long long tamanho, char *p, int len){
    if (*(p-1) == 32 || *(p-1) == ','){
        if (*(p+len) == 32 || *(p+len) == '.' || *(p+len) == ','){
            return 1; //e uma palavra valida 
        }
    }
    return 0; //nao e uma palavra valida
}