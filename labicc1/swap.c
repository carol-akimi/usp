#include <stdio.h> 

int main(void){
    int num1, num2, temp;
    int *p, *q; 
    scanf("%d %d", &num1, &num2);
    temp = num1;
    p = &temp;
    q = &num2;
    num1 = *q;
    num2 = *p;
    printf("%d %d\n", num1, num2);

}