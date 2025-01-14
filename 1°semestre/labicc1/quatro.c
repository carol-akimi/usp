#include <stdio.h> 
#include <math.h>

int main(void){
    int p, d;
    for(int i = 1000; i <= 9999; i++){
        p = i/100;
        d = i % 100;
        if(sqrt((double)i) == p + d){
            printf("%d\n", i);
        }
    }
    return 0; 
    
}