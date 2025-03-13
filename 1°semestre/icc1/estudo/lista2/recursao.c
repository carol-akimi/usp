#include <stdio.h> 

void crescer(int n);

int main (void){
    crescer(5);
    return 0;
}

void crescer(int n){
    if (n == 0)
        return;
    
    crescer(n-1);
    printf("%d", n);
}