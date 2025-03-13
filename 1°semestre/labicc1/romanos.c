#include <stdio.h> 

/*recebo um numero em decimal e devolvo em romano*/
//romano[10] vai armazenar os caracteres que representam o numero romano

int romano(char num_rom[], int dec);

int main(void){
    int n; int num_dec[100000]; 
    scanf("%d", &n);
    for(int i = 0; i < n; i++){ //recebe os valores que vão ser convertidos 
        scanf("%d", &num_dec[i]);
    }
    for(int i = 0; i < n; i++){
        int tam;
        char num_rom[15];
        tam = romano(num_rom, num_dec[i]);
        for(int i = 0; i < tam; i++){
            printf("%c", num_rom[i]);
        }
        printf("\n");
    } 
}
int romano(char num_rom[], int dec){
    int separado[4]; //separado[0] = milhares, sep[1] = centenas, sep[2] = dezenas, sep[3] = unidades 
    char simbolos = {'M', 'D', 'C', 'L', 'X', 'V', 'I'};
    int cont = 0;
    int num = 1000;
    for(int i = 0; i < 4; i++){
        separado[i] = dec/num;
        dec = dec % num;
        num = num/10; 
    }

    for(int i = 0; i < separado[0]; i++){
        num_rom[cont] = 'M';
        cont += 1;
    }
    int p = 0;
    for(int j = 0; j < 4; j++){
        if(separado[j] == 9){
            num_rom[cont] = simbolos[p+2];
            num_rom[cont+1] = simbolos[p]; 
            cont += 2;
        }else if(separado[j] == 4){
            num_rom[cont] = simbolos[p+2];
            num_rom[cont+1] = simbolos[p+1];
            cont += 2;
        }else{
            if(separado[j] >= 5){
                num_rom[cont] = simbolos[p+1];
                cont += 1; 
                for(int i = 0; i < separado[1]-5; i++){
                    num_rom[cont] = simbolos[p+2];
                    cont += 1;
                }
            }else{
                for(int i = 0; i <separado[1]; i++){
                    num_rom[cont] = simbolos[p+2];
                    cont += 1; 
                }
            }
        }
    }





    if(separado[2] == 9){
        num_rom[cont] = 'X'; 
        num_rom[cont+1] = 'C'; 
        cont += 2;
    }else if(separado[2] == 4){
        num_rom[cont] = 'X';
        num_rom[cont+1] = 'L'; 
        cont += 2;
    }else{
        if(separado[2] >= 5){
            num_rom[cont] = 'L';
            cont += 1; 
            for(int i = 0; i < separado[2]-5; i++){
                num_rom[cont] = 'X';
                cont += 1;
            }
        }else{
            for(int i = 0; i <separado[2]; i++){
                num_rom[cont] = 'X';
                cont += 1; 
            }
        }
    }
    if(separado[3] == 9){
        num_rom[cont] = 'I'; 
        num_rom[cont+1] = 'X'; 
        cont += 2;
    }else if(separado[3] == 4){
        num_rom[cont] = 'I';
        num_rom[cont+1] = 'V'; 
        cont += 2;
    }else{
        if(separado[3] >= 5){
            num_rom[cont] = 'V';
            cont += 1; 
            for(int i = 0; i < separado[3]-5; i++){
                num_rom[cont] = 'I';
                cont += 1;
            }
        }else{
            for(int i = 0; i <separado[3]; i++){
                num_rom[cont] = 'I';
                cont += 1; 
            }
        }
    }
    return cont;

}