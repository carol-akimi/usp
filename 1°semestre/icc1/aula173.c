#include <stdio.h> 

int main(void){
    int vet[1000];
    int n; 
    scanf("%d", &n);
    for(int i = 0; i < n; i++){
        scanf("%d", &vet[i]);
    }
    for(int i = 0; i < n; i++){
        for(int i = 0; i < (n-1); i++){
            if(vet[i]>vet[i+1]){
                int temp = vet[i];
                vet[i] = vet[i+1];
                vet[i+1] = temp;
            }
        }
    }
    printf("%d\n", vet);
    return 0;

}