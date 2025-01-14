#include <stdio.h>

int main(void){
    int N, T;
    float Va, Vb;
    scanf("%d", &N);
    for(int i = 0; i < N; i++){
        scanf("%f %f %d", &Va, &Vb, &T);
        if(T==0){
            printf("A corrida ainda nao comecou\n");
        }else{
            if(Va == Vb && Va == 0){
                printf("Os dois pilotos nao querem competir\n");
            }else if(Va==0){
                printf("O piloto A desistiu inesperadamente\n");
            }else if(Vb ==0){
                printf("O piloto B desistiu inesperadamente\n");
            }else if(T<0 && Va != 0){
                printf("De alguma forma os pilotos voltaram no tempo\n");
            }else if(Va == Vb && Va != 0){
                printf("Os karts empataram, percorrendo cada %.2fkm\n", Va * T);
            }else{
                if(Va > Vb){
                    printf("O kart A venceu e percorreu %.2fkm a mais que o kart B\n", Va*T - Vb*T);
                }else{
                    printf("O kart B venceu e percorreu %.2fkm a mais que o kart A\n", Vb*T - Va*T);
                }
            }
        }
    }


    return 0;
}