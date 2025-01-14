#include <stdio.h>
#include <stdlib.h> 
#include <string.h>

typedef struct passageiro{
    char Nome[20], Sobrenome[20], CPF[15], Voo[15], Assento[10], Classe[15],
    Origem[5], Destino[5];
    int Dia, Mes, Ano;
    float Valor;
}Passageiro;

typedef struct voo{
    int QtdAssentos;
    int ValorEconomica;
    int ValorExecutiva;
    int AssentosOcupados;

}Voo;

void *aloca(int tam, int TypeSize);

void CopiaDados(Passageiro *Lugares[], Voo *InfVoo, int *TamVet);

void GuardaDados(Passageiro Lugares[], Voo InfVoo);

void FechamentoVoo(Passageiro Lugares[], int tam);

void ModificarReserva(Passageiro *Lugar);

void ImprimirReserva(Passageiro Lugar);

int AchaReserva(Passageiro Lugares[]);

void FechamentoDia(Passageiro *Lugares, Voo InfVoo);



int main (void) {

    int PassageirosAlocados; char Comando[3];
    Passageiro *Lugares = aloca(10, sizeof(Passageiro));
    Voo InfVoo;

    CopiaDados(&Lugares, &InfVoo, &PassageirosAlocados);

    
    while(1) {
        scanf(" %s", &Comando[3]);

        if (!strcmp(Comando, "FV") || InfVoo.QtdAssentos == InfVoo.AssentosOcupados){ //Felipe
            FechamentoVoo(Lugares, InfVoo.AssentosOcupados); //imprime informacaoes
            GuardaDados(Lugares, InfVoo);
        

            return 0;
        
        }
        else if (!strcmp(Comando, "RR")) {
            /*lembra de tratar da alocacao dinamica da struct
            guardando o tamanho ocupado (AssentosOcupados) - ta na struct Voo
            e do tamnho real (PAssageriosAlocados)*/
        }
        else if (!strcmp(Comando, "CR")) {
            ImprimirReserva(Lugares[AchaReserva(Lugares)]);
            //a função AchaReserva retorna o indice do struct correspondente ao cpf que ela ler
        
        }
        else if (!strcmp(Comando, "MR")) { //Cerri
            ModificarReserva(&Lugares[AchaReserva(Lugares)]);
        
        }
        else if (!strcmp(Comando, "CA")) {
        
        }
        else if (!strcmp(Comando, "FD")) {


            return 0;
        }
        
    
    }

    
    return 0;
}

void FechamentoVoo(Passageiro *Lugares, int tam) {
    double ValorTotal = 0;
    printf("Voo Fechado!\n");

    for (int i =0; i< tam; i++) {
        printf("\n%s\n", Lugares[i].CPF);
        printf("%s %s\n", Lugares[i].Nome, Lugares[i].Sobrenome);
        printf("%s\n", Lugares[i].Assento);
        
    ValorTotal += Lugares[i].Valor;
    }
    printf("Valor Total: %lf\n", ValorTotal);
    printf("--------------------------------------------------");
    
}

void ModificarReserva(Passageiro *Lugar) {
    
    scanf(" %s", Lugar->Nome);
    scanf(" %s", Lugar->Sobrenome);
    scanf(" %s", Lugar->CPF);
    scanf(" %s", Lugar->Assento);

    printf("Reserva Modificada:\n");
    void ImprimirReserva(Passageiro Lugar);


}

int AchaReserva(Passageiro *Lugares) {
    char Consulta[15]; int i = 0;
    scanf(" %s", Consulta);

    while (strcmp(Consulta, Lugares[i].CPF)!=0) {
        i++;
    }
    return i;
    
}
void ImprimirReserva(Passageiro Lugar) { //impriir dados da reserva
    /*fiz a funcao pensando em ja passar a struct q ele quer,
    mas tbm da pra passar o vetor de structs e o indice,
    só muda dps na minha funcao ou avisa*/

}


void *aloca(int tam, int TypeSize) {
    void *vet;
    vet = malloc(tam*TypeSize);
    return vet;
}

void CopiaDados(Passageiro **Lugares, Voo *InfVoo, int *TamVet) {
    FILE* fp = fopen("Dados.bin", "rb");
    if (fp != NULL) {
        fread((*(&InfVoo)), sizeof(Voo), 1, fp); //não sei se ta certo 
        fread((*(&Lugares)), sizeof(Voo), InfVoo->AssentosOcupados, fp);

        (*Lugares) = aloca((InfVoo->AssentosOcupados)+10, sizeof(Passageiro)); //aloca oq ja tinha +10
        *TamVet = (InfVoo->AssentosOcupados) + 10;
    } 
    else {
        (*Lugares) = aloca(10, sizeof(Passageiro)); //se n tem aloca 10
        *TamVet = 10;
    }

    fclose(fp);
}

void GuardaDados(Passageiro *Lugares, Voo InfVoo) {
    FILE *fp = fopen("Dados.bin", "wb");
    fwrite(&InfVoo, sizeof(Voo), 1, fp);
    fwrite(&Lugares, sizeof(Voo), InfVoo.AssentosOcupados, fp);
    fclose(fp);
}

void RealizarReserva(Passageiro *Lugares, int *PassageirosAlocados, Voo *InfVoo) { //InfVoo guarda info sobre o voo 
    if(PassageirosAlocados <= InfVoo->AssentosOcupados){
        realloc(Lugares, (InfVoo->AssentosOcupados)+10); //ou usa a função aloca?
        *PassageirosAlocados += 10; 
    }
    int i =  InfVoo->AssentosOcupados; 
    scanf("%s %s %s %d %d %d %s %s %s %f %s %s", Lugares[i].Nome,  Lugares[i].Sobrenome,  Lugares[i].CPF, 
    Lugares[i].Dia, Lugares[i].Mes, Lugares[i].Ano, Lugares[i].Voo, Lugares[i].Assento, Lugares[i].Classe,
    Lugares[i].Valor, Lugares[i].Origem, Lugares[i].Destino); 
    fwrite(Lugares, sizeof(Passageiro), i, fp); 
    
}

void FechamentoDia(Passageiro *Lugares, Voo InfVoo){
    float ValorParcial=0;

    for(int i=0; i<InfVoo.AssentosOcupados; i++){
        if(!strcmp(Lugares[i].Classe, "economica"))
            ValorParcial+=InfVoo.ValorEconomica;
        else
            ValorParcial+=InfVoo.ValorExecutiva;
    }
    printf("Fechamento do dia:\nQuantidade de reservas: %d\nPosição: %.2f\n", InfVoo.AssentosOcupados, ValorParcial);
    printf("--------------------------------------------------");
}



