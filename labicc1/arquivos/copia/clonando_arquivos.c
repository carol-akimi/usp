#include <stdio.h> 
#include <stdlib.h>


int main(void){
    char arquivo[15];
 
    scanf("%[^\n]", arquivo);

    FILE *fp;
    if((fp = fopen(arquivo, "rb")) == NULL){
        printf("erro na abertura do arquivo\n");
        exit(1);
    }
    long long tamanho = 0;
    char c;
    c = fgetc(fp);
    while(c != EOF){
        tamanho++;
        c = fgetc(fp);
    }
    char *p = (char*) malloc(sizeof(char) * tamanho);
    fseek(fp, 0, SEEK_SET); //volta o ponteiro para o inicio do arquivo
    fread(p, 1, tamanho, fp);
    for (int i = 0; i < tamanho; i++){
        printf("%c", p[i]);
    }
    printf("\n");
    free(p);
    p = NULL;
    fclose(fp);
    fp = NULL;

}