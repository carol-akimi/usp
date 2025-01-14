#include <stdio.h> 

int main(void){
    int n;
    float valor = 0; //v[101] vai armazenar o lucro de cada produto
    float vet[101]; 
    float maior = -1; int ind = -1;
    scanf("%d", &n);
    if(n == 0){
        printf("Sem atividades registradas hoje\n");
    }else{
        for(int i = 1; i <= n; i++){
            float c, v, vi=0;
            int ad, ven;
            scanf("%f %f %d %d", &c, &v, &ad, &ven);
            vi = (v*ven)-(c*ad);
            valor += vi;
            vet[i] = vi; 
        }
        if(valor > 0){
            printf("lucro: %.2f\n", valor);
            for(int i = 1; i <= n; i++){
                if(vet[i]>maior){
                    maior = vet[i]; ind = i;}  
            }
            printf("produto: %d lucro relativo: %.2f\n", ind, maior);
        }else{
            printf("prejuizo: %.2f\n", -valor);
            for(int i = 1; i <= n; i++){
                if(vet[i]>maior){
                    maior = vet[i]; ind = i;}  
            }
            printf("produto: %d lucro relativo: %.2f\n", ind, maior);
        }
    }

}