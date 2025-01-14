#include <stdio.h> 

int main(void){
    /*
    fatorial de n 
    n! = n * (n-1) * (n-2) * ... * 1
    */
   int n; 
   printf("Escreva um valor: "); 
   scanf("%d", &n); 
   int valor = n; //armazenar o valor de n 
   int fatorial = 1; //armazenar o valor do fatorial 
   while (n >= 1) {
        fatorial = fatorial * n; //fatorial *= n; 
        n = n - 1; //n--
   } 
   printf("O fatorial de %d é %d\n", valor, fatorial); //n é zero
    
}