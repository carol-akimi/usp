#include <stdio.h> 
#include <string.h> 

int main (void){
    char placa[15];
    char letras[30] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    char digitos[12] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    scanf(" %s", placa); 
    if (strlen(placa) == 8){
        int carac = 0;
        int num = 0; 
        for(int i = 0; i < 3; i++){
            for (int j = 0; j < 26; j++){
                if(placa[i] == letras[j])
                    carac++; 
            }
        }
        for(int i = 4; i < 8; i++){
            for (int j = 0; j < 10; j++){
                if(placa[i] == digitos[j])
                    num++; 
            }
        }
        if(carac == 3 && num == 4 && placa[3] == '-'){
            printf("%d\n", 1); 
        }else{
            printf("%d\n", 0);
        }


    }else if (strlen(placa) == 7){
        int carac1 = 0; int carac = 0; 
        int num1 = 0; int num = 0;
        for(int i = 0; i < 3; i++){
            for (int j = 0; j < 26; j++){
                if(placa[i] == letras[j])
                    carac1++; 
            }
        }
        for (int j = 0; j < 10; j++){
            if (digitos[j] == placa[3]){
                carac++;
            }
        }
        for (int j = 0; j < 26; j++){
            if (letras[j] == placa[4]){
                num++;
            }
        }
        for(int i = 5; i < 7; i++){
            for (int j = 0; j < 10; j++){
                if(placa[i] == digitos[j])
                    num1++; 
            }
        } 
        if(carac1 == 3 && carac == 1 && num1 == 2 && num == 1){
            printf("%d\n", 2); 
        }else{
            printf("%d\n", 0); 
        }
        

    }else{
        printf("%d\n", 0);
    }
    


    return 0; 
}