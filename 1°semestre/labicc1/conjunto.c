/*recebe dois vetores, devolve os numeros de intersecçao e a - b*/
#include <stdio.h> 

int main (void){
    int a[10], b[10], it[10], sub[10]; //it vai guardar os numeros de intersecçao 
    int Na, Nb, size=0, size2=0;
    int cont1=0, cont2=0;
    scanf("%d", &Na);
    for(int i = 0; i < Na; i++){
        scanf("%d", &a[i]);
    }
    scanf("%d", &Nb);
    for(int i = 0; i < Nb; i++){
        scanf("%d", &b[i]);
    }
    for(int i = 0; i < Na; i++){
        for(int j = 0; j < Nb; j++){
            if(a[i] == b[j]){
                it[cont1] = a[i];
                size += 1;
                cont1 += 1;
                break;
            }
        }
    }
    for(int i = 0; i < Na; i++){
        int pertence = 0;
        for(int j = 0; j < size; j++){
            if(a[i] == b[j]){
                pertence += 1;
            }
        }
        if(pertence != 0){
            sub[cont2] = a[i];
            cont2 += 1;
            size += 1;
        }
    }


    if(size == 0){
        printf("intersecao: vazio\n");
    }else{
        printf("intersecao: ");
        for(int i = 0; i < size; i++){
            printf("%d ", it[i]);
        }
        printf("\n");
    }
    if(size2 == 0){
        printf("a - b: vazio\n");
    }else{
        printf("a - b: "); 
        for(int i = 0; i < size2; i++){
            printf("%d ", sub[i]);
        }
        printf("\n");
    }

    return 0;
}


