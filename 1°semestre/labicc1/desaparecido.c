#include <stdio.h> 

/*para ver qual numero esta faltando*/

int find(int N, int missing[], int full[]);
void sort(int N, int missing[]);

int main(void){
    int N; int full[100001]; int missing[100001];
    scanf("%d", &N);
    int cont = 1;
    for(int i = 0; i < N; i++){
        full[i] = cont;
        cont += 1;
    }
    for(int i = 0; i < N-1; i++){
        scanf("%d", &missing[i]);
    }
    sort(N, missing);
    printf("Numero desaparecido: %d\n", find(N, missing, full));

}

void sort(int N, int missing[100001]){
    for(int i = 0; i < N - 2; i++){ //são feitas N -1 comparações, mas como o vetor já tem N-1 de tamanho, fica N -2
        for(int j = 0; j < N - i - 2; j++){
            if(missing[j] > missing[j+1]){
                int temp = missing[j];
                missing[j] = missing[j+1];
                missing[j+1] = temp;
            }
        }
    }
}

int find(int N, int missing[], int full[]){
    int num;
    for(int i = 0; i < N; i++){
        if(missing[i] != full[i]){
            num = full[i];
            break;
        }
    }
    return num;
}