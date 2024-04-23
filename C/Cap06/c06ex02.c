// c06ex02.c

#include <stdio.h>

int main(void) {
  double NOTAS[8][4];
  int I, J;

  for (I = 0; I <= 7; ++I) {
    printf("Entre as notas do aluno %d:\n", I + 1);
    for (J = 0; J <= 3; ++J) {
      printf("Nota %d: ", J + 1);
      scanf("%lf", &NOTAS[I][J]);
      while (getchar() != '\n');
    }
    printf("\n");
  }

  printf("\n");
  printf("RELATORIO DE NOTAS\n");
  printf("\n");
  printf("Aluno Nota1 Nota2 Nota3 Nota4\n");
  printf("----- ----- ----- ----- -----\n");
  for (I = 0; I <= 7; ++I) {
    printf("%5d ", I + 1);
    for (J = 0; J <= 3; ++J)
      printf("%5.1lf ", NOTAS[I][J]);
    printf("\n");
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
