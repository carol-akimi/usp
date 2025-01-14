#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 

int main (void){
    char invasora[20];
    scanf("%s", invasora);

    char arquivo[15];
    scanf("%s", arquivo);

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
    char *tudo = (char*) malloc(sizeof(char) * tamanho+1);
    fseek(fp, 0, SEEK_SET); //volta o ponteiro para o inicio do arquivo
    fread(tudo, 1, tamanho, fp);
    char *p =  strstr(tudo, invasora); //p esta apontando para a posição que tem a palavra invasora 
    int len = strlen(invasora);



    for (int i = 0; i < tamanho; i++){
        if (&(tudo[i]) == p){
            if(tudo[i+len] == 32){
                fseek(fp, len, *p);
                i += len;
                
            }else{
                fseek(fp, len-1, *p);
                i += len-1;
            }
        }else{
            printf("%c", tudo[i]);
            
        }
        
    }
    printf("\n");
    free(tudo);
    tudo = NULL;
    fclose(fp);
    fp = NULL;


}
