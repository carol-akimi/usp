#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct voo {
    int QtdAssentos;
    float ValorEconomica;
    float ValorExecutiva;
    int AssentosOcupados;
    int Canceladas;
} Voo;

typedef struct passageiro {
    char Nome[20], Sobrenome[20], CPF[15], Voo[15], Assento[10], Classe[15],
         Origem[5], Destino[5];
    int Dia, Mes, Ano;
    float Valor;
} Passageiro;

// Assuming Aloca function is defined as follows
void* Aloca(size_t num, size_t size) {
    void* ptr = malloc(num * size);
    if (!ptr) {
        fprintf(stderr, "Memory allocation failed\n");
        exit(1);
    }
    return ptr;
}

void CopiaDados(Passageiro **Lugares, Voo *InfVoo, int *PassageirosAlocados) {
    FILE* fp = fopen("Dados.bin", "rb");
    char Comando[3];
    if (fp != NULL) { // The file exists
        if (fread(InfVoo, sizeof(Voo), 1, fp) != 1) {
            fprintf(stderr, "Error reading Voo from file\n");
            fclose(fp);
            exit(1);
        }

        *Lugares = (Passageiro*) malloc(sizeof(Passageiro) * InfVoo->AssentosOcupados);
        if (*Lugares == NULL) {
            fprintf(stderr, "Memory allocation failed\n");
            fclose(fp);
            exit(1);
        }

        if (fread(*Lugares, sizeof(Passageiro), InfVoo->AssentosOcupados, fp) != (size_t)InfVoo->AssentosOcupados) {
            fprintf(stderr, "Error reading Passageiros from file\n");
            free(*Lugares);
            fclose(fp);
            exit(1);
        }

        *PassageirosAlocados = InfVoo->AssentosOcupados;
        fclose(fp);
    } 
    else { // The file does not exist
        *Lugares = (Passageiro*) malloc(sizeof(Passageiro) * 10);
        if (*Lugares == NULL) {
            fprintf(stderr, "Memory allocation failed\n");
            exit(1);
        }

        *PassageirosAlocados = 10;
        do {
            scanf(" %2s", Comando);
        } while (strcmp(Comando, "AV") != 0);
        
        scanf("%d %f %f", &InfVoo->QtdAssentos, &InfVoo->ValorEconomica, &InfVoo->ValorExecutiva); 
        InfVoo->Canceladas = 0;
        InfVoo->AssentosOcupados = 0;
    }
}

int main (void){
    int PassageirosAlocados, ReservasCanceladas = 0; char Comando[3];
    Passageiro *Lugares;
    Voo InfVoo;

    CopiaDados(&Lugares, &InfVoo, &PassageirosAlocados);

}