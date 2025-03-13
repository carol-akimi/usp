#include <stdio.h> 
#include <stdlib.h> 

int main (int argc, char *argv[]){
    FILE *fp; 
    fp = fopen(argv[1], "w");
    if(fp == NULL){
        printf("erro na abertura do arquivo\n");
        exit(1);
    }
    char c;
    while (c != '$'){
        scanf(" %c", &c);
        fprintf(fp, "%c", c);
    }
    fclose(fp);
    return 0;
}
