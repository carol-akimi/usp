#include <stdio.h> 

int main(void){
    int a[100000], b[100000]; //it vai guardar os numeros de intersecçao 
    int Na = 0;
    int Nb = 0;
    int cont_it = 0;
    int cont_sub = 0;

    scanf("%d", &Na);
    for(int i = 0; i < Na; i++){
        scanf("%d", &a[i]);
    }
    scanf("%d", &Nb);
    for(int i = 0; i < Nb; i++){
        scanf("%d", &b[i]);
    }
    int it[Na + Nb];
    int sub[Na + Nb];

    for(int i = 0; i < Na; i++){
        int pertence = 0; 
        for(int j = 0; j < Nb; j++){
            if(a[i] == b[j]){
                it[cont_it++] = a[i];
                pertence = 1;
                break;
            }
        }
        if(!pertence){
            sub[cont_sub++] = a[i];
        }
    }

    printf("intersecao: ");
    if(cont_it == 0){
        printf("vazio\n");
    }else{
        for(int i = 0; i < cont_it; i++){
            printf("%d ", it[i]);
        }
        printf("\n");
    }
    printf("a - b: ");
    if(cont_sub == 0){
        printf("vazio\n");
    }else{
        for(int i = 0; i < cont_sub; i++){
            printf("%d ", sub[i]);
        }
        printf("\n");
    }
    return 0; 

}