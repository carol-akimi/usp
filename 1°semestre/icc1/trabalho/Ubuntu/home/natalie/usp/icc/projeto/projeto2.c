#include <stdio.h>
#include <stdlib.h> 
#include <string.h>

typedef struct passageiro{
    char Nome[20], Sobrenome[20], CPF[15], Assento[10], Classe[15];
    float Valor;
}Passageiro;

typedef struct voo{
    char status; //aberto(1) ou fechado(0)
    int QtdAssentos;
    float ValorEconomica;
    float ValorExecutiva;
    int AssentosOcupados;
    char Voo[15], Origem[5], Destino[5]; 
    int Dia, Mes, Ano;

}Voo;

void *aloca(int tam, int TypeSize);

void CopiaDados(Passageiro *Lugares[], Voo *InfVoo, int *TamVet);

void GuardaDados(Passageiro Lugares[], Voo InfVoo);

void FechamentoVoo(Passageiro Lugares[], int tam);

void ModificarReserva(Passageiro *reserva, Voo InfVoo);

void ImprimirReserva(Passageiro reserva, Voo InfVoo);

int AchaReserva(Passageiro Lugares[]);

void FechamentoDia(Passageiro *Lugares, Voo InfVoo);

void RealocaVet(Passageiro **Lugares, int Ocupado, int Alocado);

void RealizarReserva(Passageiro *reserva[], int *PassageirosAlocados, Voo *InfVoo);



int main (void) {

    int PassageirosAlocados; char Comando[3];
    Passageiro *Lugares;
    Voo InfVoo;

    CopiaDados(&Lugares, &InfVoo, &PassageirosAlocados);

    
    while(1) {
        scanf(" %s", &Comando[3]);

        if (!strcmp(Comando, "FV") || InfVoo.QtdAssentos == InfVoo.AssentosOcupados){
            FechamentoVoo(Lugares, InfVoo.AssentosOcupados); //imprime informacaoes
            GuardaDados(Lugares, InfVoo);
        
            return 0;
        
        }
        else if (!strcmp(Comando, "RR")) { //precisa de variavel que guarda asreservas no dia
            RealocaVet(&Lugares, InfVoo.AssentosOcupados, PassageirosAlocados);

            RealizarReserva(&Lugares, &PassageirosAlocados, &InfVoo);

        }
        else if (!strcmp(Comando, "CR")) { //Consultar Reserva
            ImprimirReserva(Lugares[AchaReserva(Lugares)], InfVoo);  //a função AchaReserva retorna o indice do struct correspondente ao cpf que ela ler
           
        }
        else if (!strcmp(Comando, "MR")) { //Modificar Reserva
            ModificarReserva(&Lugares[AchaReserva(Lugares)], InfVoo);
            
        
        }
        else if (!strcmp(Comando, "CA")) { //Cancelar Reserva
            //funcao q apaga struct

            RealocaVet(&Lugares, InfVoo.AssentosOcupados, PassageirosAlocados);

        }
        else if (!strcmp(Comando, "FD")) {
            //funcao que imprime informacoes;
            GuardaDados(Lugares, InfVoo);
        
            return 0;
        }
        
    
    }

    //desalocar

    
    return 0;
}

void FechamentoVoo(Passageiro *Lugares, int tam) {
    float ValorTotal = 0;
    printf("Voo Fechado!\n");

    for (int i =0; i< tam; i++) {
        printf("\n%s\n", Lugares[i].CPF);
        printf("%s %s\n", Lugares[i].Nome, Lugares[i].Sobrenome);
        printf("%s\n", Lugares[i].Assento);
        
    ValorTotal += Lugares[i].Valor;
    }
    printf("Valor Total: %.2f\n", ValorTotal);
    printf("--------------------------------------------------\n");
    
}

void ModificarReserva(Passageiro *reserva, Voo InfVoo) {
    
    scanf(" %s", reserva->Nome);
    scanf(" %s", reserva->Sobrenome);
    scanf(" %s", reserva->CPF);
    scanf(" %s", reserva->Assento);

    printf("Reserva Modificada:\n");

    ImprimirReserva(*reserva, InfVoo);
}

int AchaReserva(Passageiro *Lugares) {
    char Consulta[15]; int i = 0;
    scanf(" %s", Consulta);

    while (strcmp(Consulta, Lugares[i].CPF)!=0) {
        i++;
    }
    return i;
    
}
void ImprimirReserva(Passageiro reserva, Voo InfVoo) { 
    printf("%s\n", reserva.CPF);
    printf("%s %s\n", reserva.Nome, reserva.Sobrenome);
    printf("%02d/%02d/%d\n", InfVoo.Dia, InfVoo.Mes, InfVoo.Ano);
    printf("Voo: %s", InfVoo.Voo);
    printf("Assento: %s\n", reserva.Assento);
    printf("Classe: %s\n", reserva.Classe);
    printf("Trecho: %s %s\n", InfVoo.Origem, InfVoo.Destino);
    printf("Valor: %.2f\n", reserva.Valor);
    printf("--------------------------------------------------\n");
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
        fread((*(&Lugares)), sizeof(Passageiro), InfVoo->AssentosOcupados, fp);

        (*Lugares) = (Passageiro*)aloca((InfVoo->AssentosOcupados)+10, sizeof(Passageiro)); //aloca oq ja tinha +10
        *TamVet = (InfVoo->AssentosOcupados) + 10;
    } 
    else {
        (*Lugares) = (Passageiro*)aloca(10, sizeof(Passageiro)); //se n tem aloca 10
        *TamVet = 10;
    }
    
    fclose(fp);
}

void GuardaDados(Passageiro *Lugares, Voo InfVoo) {
    FILE *fp = fopen("Dados.bin", "wb");
    fwrite(&InfVoo, sizeof(Voo), 1, fp);
    fwrite(&Lugares, sizeof(Passageiro), InfVoo.AssentosOcupados, fp);
    fclose(fp);
}

void RealizarReserva(Passageiro **Lugares, int *PassageirosAlocados, Voo *InfVoo) { //InfVoo guarda info sobre o voo 
    int i =  InfVoo->AssentosOcupados; 
    RealocaVet(&Lugares, )
    scanf("%s %s %s %d %d %d %s %s %s %f %s %s", (*Lugares)[i].Nome,  (*Lugares)[i].Sobrenome,  (*Lugares)[i].CPF, 
    &InfVoo->Dia, &InfVoo->Mes, &InfVoo->Ano, InfVoo[i].Voo, (*Lugares)[i].Assento, (*Lugares)[i].Classe,
    &(*Lugares)[i].Valor, InfVoo->Origem, InfVoo->Destino);  
    InfVoo->AssentosOcupados++; 
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

void RealocaVet(Passageiro **Lugares, int Ocupado, int Alocado) {
    if (Ocupado == Alocado || Alocado > Ocupado+20) {
        (*Lugares) = (Passageiro*)realloc((*Lugares), (Ocupado+10)*sizeof(Passageiro));
    }
}

/*
fechamento do voo (vai ficar aberto infinitamente?
eh pra excluir os dados ou manter 
quando estourar a quantidade de assentos eh para fechar o voo?

*/

/*
realizer reserva
cancelar reserva
abertura de voo (dentro de copiar dados)
arrumar a struct 
mudar o imprimir reserva
*/