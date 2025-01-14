#include <stdio.h> 
#include <stdlib.h>

void maxMin(int lista[], int inicio, int fim, int *max, int *min);


int main(void){
    int lista[] = {2, 12, 44, 3, 67, 9, 40, 3, -1};
    int tam = sizeof(lista)/sizeof(lista[0]);  

    int max, min; 

    maxMin(lista, 0, tam-1, &max, &min); 
    return 0; 
}

void maxMin(int lista[], int inicio, int fim, int *max, int *min){
    //caso base 
    if (inicio == fim){
        *max = lista[inicio];
        *min =lista[inicio]; 
    }else if(inicio + 1 == fim){
        //se houver dois elementos comparamos diretamente 
        if (lista[inicio] > lista[fim]){
            *max = lista[inicio]; 
            *min = lista[fim]; 
        }else{
            *max = lista[inicio]; 
            *min = lista[fim]; 
        }
    }else{
        int meio = (inicio+fim)/2;
        int max1, min1, max2, min2;
        //conquista
        maxMin(lista, inicio, meio, &max1, &min1); //chamada recursiva 
        maxMin(lista, meio+1, fim, &max1, &min1); 

        //combinação 
        *max = (max1, max2) ? max1 : max2; //condicional + atribuição   
        *min = (min1, min2) ? min1 : min2; 
    }
}

