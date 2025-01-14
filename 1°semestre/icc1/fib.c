#include <stdio.h> 

int main(void){
    int n, x, y, fib;
    fib = 0;
    scanf("%d", n); 
    for(int i = 0; i <= (n-3); i++){
        x = 1; 
        y = 1;
        fib = fib + x + y;
        x = x + y;
        y = x;
    }
    printf("%d", fib); 
    return 0;

}

