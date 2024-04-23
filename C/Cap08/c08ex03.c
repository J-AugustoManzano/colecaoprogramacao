// c08ex03.c

#include <stdio.h>

int main(void) {
  int Numeros[5];
  int I, J, X;

  printf("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n\n");

  for (I = 0; I <= 4; ++I) {
    printf("Entre o %do. numero: ", I + 1);
    scanf("%d", &Numeros[I]);
  }

  for (I = 0; I <= 3; ++I) {
    for (J = I + 1; J <= 4; ++J) {
      if (Numeros[I] > Numeros[J]) {
        X = Numeros[I];
        Numeros[I] = Numeros[J];
        Numeros[J] = X;
      }
    }
  }

  printf("\n");
  for (I = 0; I <= 4; ++I) {
    printf("%do. numero: %d\n", I + 1, Numeros[I]);
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
