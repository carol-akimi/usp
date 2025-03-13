#include<stdio.h>
#include <string.h>

int main() {
    char a[20] = {"eu amo meu amigo"};
    char c[20] = {"meu amor"}; 
    char b[20] = {"meu"}; 
    char *p; char *q; 
    p = strstr(a, b); 
    q = strstr(c, b); 
    char *z; 
    z = &a[0]; 
    for (int i = 0; i < 25; i++){
        if(z == p){
            break;
        }else{
            printf("%c", *z); 
            z++; 
        }
    }
    printf("%s", q); 
   
}