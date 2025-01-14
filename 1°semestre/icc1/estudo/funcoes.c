#include <stdio.h>

int entrada(int *a, int *b, int *c);
void swap(int *x, int *y);
void ordem(int *a, int *b, int *c);


int main (void){
    int a, b, c;
    entrada(&a, &b, &c);
    ordem(&a, &b, &c);
    printf("%d %d %d\n", a, b, c);

}


int entrada(int *a, int *b, int *c){
    
    scanf("%d %d %d", a, b, c);

}

void swap(int *x, int *y){
    int temp;
    temp = *x;
    *x = *y;
    *y = temp;
}

void ordem(int *a, int *b, int *c){
    if (*a > *b){
        swap(a, b);
    }
    if (*a > *c){
        swap(a, c);
    }
    if (*b > *c){
        swap(b, c);
    }
}