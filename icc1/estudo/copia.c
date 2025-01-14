#include <stdio.h> 
#include <stdlib.h> 

int main (int argc, char *argv[]){ //vai receber o nome do arquivo a ser lido e o nome do arquivo pra onde vai a cópia
    FILE *fp; 
    FILE *fp2;
    if((fp = fopen(argv[1], "rb")) == NULL){
        printf("erro na abertura do arquivo");
        exit(1);
    }
    if((fp2 = fopen(argv[2], "wb")) == NULL){
        printf("erro na abertura do arquivo");
        exit(1);
    }
    char c; 
    fscanf(fp, "%c", &c);
    while(!feof(fp)){ //devolve !=0 se o fim do arquivo é encontrado 
        fprintf(fp2, "%c", c); 
        fscanf(fp, "%c", &c);
    }
    /*
    char c; 
    c = fgetc(fp);
    while(!feof(fp)){
        fputc(c, fp2);
        c = fgetc(fp);
    }
    */
   fclose(fp);
   fclose(fp2);
}


