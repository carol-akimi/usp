#include <stdio.h>

int main(void){
    int team[101], pont[101];
    char t, w, m, e, v1, v2, a;
    int n, p1, p2;
    p1 = 0;
    p2 =0; 
    scanf("%d", &n);
    for(int i = 0; i < n; i++){
    scanf("%c %c %c %c %c %d %c %c %d", &t, &w, &m, &e, &v1, &team[i], &v2, &a, &pont[i]);
    }
    for(int i = 0; i < n; i++){
        if(team[i]==1){
            p1 += pont[i];
        }else{
            p2 += pont[i];
        }
    }
    printf("%d X %d", p1, p2);
    return 0;
    
}
