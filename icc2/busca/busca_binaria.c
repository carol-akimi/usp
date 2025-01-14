#include <stdio.h>
#include <stdlib.h>

int busca_binaria (int v[], int ini, int fim, int x);

int main(void){
    int v[] = {1, 2, 5, 6, 7, 9, 10, 11};

}

int busca_binaria (int v[], int ini, int fim, int x){
    if (ini > fim){
        return -1; 
    }
    int meio = (ini + fim)/2;
    if (v[meio] == x){
        return meio; 
    }
    if (x < v[meio]){
        return busca_binaria(v, ini, meio-1, x); 
    }else{
        return busca_binaria(v, meio+1, fim, x); 
    }
}