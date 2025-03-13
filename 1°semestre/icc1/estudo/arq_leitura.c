#include <stdio.h>
#include <stdlib.h> 

int main(void){
    FILE *fp; 
    if((fp = fopen("dados.txt", "r")) == NULL){
        printf("erro na abertura do arquivo\n");
        exit(1);
    }
    char c; 
    while (fscanf(fp, " %c", &c)!= EOF){ //eu estava colocando c como a condição de parada e nao estav nem lendo os caracteres
        printf("%c\n", c);
    }
    fclose(fp);
    return 0; 
}

/*while (fscanf(fp, “%c”, &c) != EOF)
printf(“%c”, c)*/