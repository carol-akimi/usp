#include <stdio.h> 

void verificar(char mat[55][55], int status[2], int i, int j);

int main (void){
    char mat[55][55]; 
    int status[2] = {0, 0}; 
    int N, Q;

    for (int i = 0; i < 55; i++){
        for (int j = 0; j < 55; j++){
            mat[i][j] = 0; 
        }
    }
    scanf("%d %d", &N, &Q); 
    for (int i = 1; i <= N; i++){
        for (int j = 1; j <= N; j++){
            scanf(" %c", &mat[i][j]); 
    
        }
    }

            for (int i = 1; i <= N; i++){
                for (int j = 1; j <= N; j++){
                    verificar(mat, status, i, j); 
                
                    if (mat[i][j] == '0'){
                        if (status[0] == 3){
                            mat[i][j] = '1';
                        }else{
                            mat[i][j] = '0'; 
                        }
                    }else{
                        if (status[0] == 2 || status[0] == 3){
                            mat[i][j] = '1'; 
                        }else{
                            mat[i][j] = '0'; 
                        }
                    }
        
            } 
            status[0] = 0; 
                    status[1] = 0; 
        }

    for (int i = 1; i <= N; i++){
        for (int j = 1; j <= N; j++){
            printf("%c", mat[i][j]); 
        }
        printf("\n"); 
    }
}


void verificar(char mat[55][55], int status[2], int i, int j){
            if (mat[i-1][j-1] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }
            if (mat[i-1][j] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }
            if (mat[i-1][j+1] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }
            if (mat[i][j-1] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }
            if (mat[i][j+1] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }
            if (mat[i+1][j-1] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }
            if (mat[i+1][j] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }
            if (mat[i+1][j+1] == '1'){
                status[0] += 1; 
            }else{
                status[1] += 1; 
            }

        }



