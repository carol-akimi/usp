#include <stdio.h> 
#include <stdlib.h> 

int main (int argc, char *argv[]){
    FILE *fp;
    if((fp = fopen(argv[1], "rb")) == NULL){
        printf("erro!\n");
        exit(1);
    }
    fseek(fp, atoi(argv[2]), SEEK_SET); 
    char c; 
    c = fgetc(fp); 
    putchar(c);
    fclose(fp);

}