#include <stdio.h>
#include <stdbool.h>

#include "item.h"
#include "abb.h"

int main(void) {
  int n;
  scanf("%d", &n);
  
  ABB* arvore = abb_criar();

  for(int i = 0; i < n; i++) {
    int chave;
    scanf("%d", &chave);

    abb_inserir(arvore, item_criar(chave, NULL));
  }


  if(abb_perfeitamente_balanceada(arvore) == false) {
    printf("NÃO!\n");
  }
  else {
    printf("É PERFEITAMENTE BALANCEADA SIM!\n");
  }

  return 0;
}
