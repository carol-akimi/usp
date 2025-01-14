#include <stdio.h>

int palindromo(int size, char word[]);

int main(void){
    int n; 
    scanf("%d", &n);
    for(int i = 0; i < n; i++){
        char word[100];
        int size = 0, i = 0;
        scanf("%s", word);
        while(word[i] != '\0'){
            size += 1;
            i += 1;
        }
        if(palindromo(size, word) == 1){ //1 é um palindromo
            printf("%s eh um palindromo\n", word);
        }else{
            printf("%s nao eh um palindromo\n", word);
        }
    }
    return 0;
}

int palindromo(int size, char word[]){
    char *i; char *f;
    i = word;
    f = word + (size-1);
    int dif = 0; 
    for(int j = 0; j < size/2; j++){
        if(*i != *f){
            dif += 1;
        }
        i++;
        f--; 
    }
    if(dif == 0){
        return 1;
    }else{
        return 0;
    }
}
