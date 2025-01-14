#include <stdio.h> 
#include <stdlib.h> 

int main (int argc, char *argv[]){
    FILE *fp;
    if((fp = fopen(argv[1], "r")) == NULL){
        printf("erro\n");
        exit(1);
    }
    int cont = 1; //vai contar a quantidade de linhas 
    char c;
    c = getc(fp);
    char carac;
    while(c != EOF){
        putchar(c); //putc(c, stdout)
        if (c == '\n'){
            cont++;
        }
        if(cont == 20){
            do{
                scanf("%c", &carac);
            }while(carac != 10);
            cont = 0;
        }
        c = getc(fp);
    }
    fclose(fp);
    return 0;
}

/*

#include <stdio.h>
#include <stdlib.h>


int main (int argc, char* argv[]){
    FILE *fp;
    char c;
    int cont=1;
        
    if ((fp=fopen(argv[1], "r"))==NULL){
        printf("Erro na abertura do arquivo %s!", argv[1]);
        exit(1);
    }

    c = getc(fp);
    
    while (c != EOF){
        putc(c, stdout);
        if (c == '\n')
            cont ++;

        if (cont == 20){
            printf("\nPressione <Enter> para continuar\n");
            do{
                scanf("%c",&c);
            }while(c != 10);
            cont = 1;
        }
        c = getc(fp);
    }
    
    fclose(fp);

    return 0;
}
*/