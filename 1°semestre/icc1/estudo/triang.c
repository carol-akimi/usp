#include <stdio.h> 
#include <math.h>

double hipotenusa(double x, double y);

int main (void){
    double a, b, c;
    scanf("%lf %lf %lf", &a, &b, &c);
    printf("%lf\n", hipotenusa(hipotenusa(a, b), c));
    
}

double hipotenusa(double x, double y){
    return sqrt((x*x)+(y*y));
}