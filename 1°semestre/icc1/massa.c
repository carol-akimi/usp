#include <stdio.h>
int main(void){
    int t = 0;
    double m, mi, mf;
    scanf("%lf", &m);
    mi = m;
    while(m > 0.5){
        m = m/2;
        t += 50;
        mf = m;
    }
    printf("A massa inicial é %lf, e a massa final é %lf\n", mi, mf);
    printf("O processo demorou %d horas %d minutos %d segundos", t/3600,(t/60)%60 ,(t%60));
}