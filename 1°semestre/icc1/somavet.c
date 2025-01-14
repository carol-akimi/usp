#include <stdio.h>

int main(void){
    int N, M;
    int a=0, b=0;
    int vetN[31], vetM[31];
    int *n, *m;
    scanf("%d %d", &N, &M);
    for(int i = 0; i < N; i++){ //ler o vetor N
        int x; scanf("%d", &x);
        vetN[i] = x;
    }
    for(int i = 0; i < M; i++){
        int x; scanf("%d", &x);
        vetM[i] = x;
    }
    n = vetN + N - 1; //esta apontando para o elemento da ultima posiçao do vetor vetN
    m = vetM + M - 1;
    int conv = 1; //vai fazer a conversão entre binario e decimal 
    for(int i = 0; i < N; i++){ 
        a += ((*n) * conv); //comeca pelo bit menos significativo
        conv *= 2; 
        n -= 1;
    }
    int conv2 = 1;
    for(int i = 0; i < M; i++){ 
        b += *m * conv2;
        conv2 *= 2;
        m -= 1;
    }

    printf("%d\n", a + b);


}