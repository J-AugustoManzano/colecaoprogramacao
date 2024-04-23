// c08ex04.c

#include <stdio.h>
#include <string.h>

int main(void) {
  char Nomes[5][100];
  char X[100];
  int I, J;

  printf("CLASSIFICACAO DE NOMES (DECRESCENTE)\n\n");

  for (I = 0; I <= 4; ++I) {
    printf("Entre o %do. nome: ", I + 1);
    fgets(Nomes[I], sizeof(Nomes[I]), stdin);
    Nomes[I][strcspn(Nomes[I], "\n")] = '\0';
  }

  for (I = 0; I <= 3; ++I) {
    for (J = I + 1; J <= 4; J++) {
      if (strcmp(Nomes[I], Nomes[J]) < 0) {
        strcpy(X, Nomes[I]);
        strcpy(Nomes[I], Nomes[J]);
        strcpy(Nomes[J], X);
      }
    }
  }

  printf("\n");
  for (I = 0; I <= 4; ++I) {
    printf("%do. nome: %s\n", I + 1, Nomes[I]);
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
