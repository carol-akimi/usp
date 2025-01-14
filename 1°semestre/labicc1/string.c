#include <stdio.h> 
//&str[0] == str
// \0 indica o fim da string

int main(void){
    char str[26];
    char *p; 
    scanf("%25[^\n]", str); //ou scanf("%25[^\n]", str); com expressão regular, so pare de ler quando der enter
    p = str; //sem & ou p = &str[0]
    int i = 0;
    while(str[i] != '\0'){
        printf("%c\n", *p);
        p++;
        i ++;
    }    
    return 0;

}