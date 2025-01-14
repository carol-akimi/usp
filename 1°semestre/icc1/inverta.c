#include <stdio.h>

int main(void){
    int n, *p;
    int vet[10001];
    int x;
    scanf("%d", &n);
    for(int i = 0; i < n; i++){
        scanf("%d", &x);
        vet[i] = x;
    }
    p = vet + n - 1;
    for(int i = 0; i < n; i++){
        printf("%d ", *p);
        p--;
    }
    return 0;
}