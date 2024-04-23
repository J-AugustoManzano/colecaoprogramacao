// c04ex03.c

#include <stdio.h>

int main(void) {
  int A, B, X, R;

  printf("Entre o 1o. valor numerico: ");
  scanf("%d", &A);
  while (getchar() != '\n');

  printf("Entre o 2o. valor numerico: ");
  scanf("%d", &B);
  while (getchar() != '\n');

  X = A + B;

  if (X >= 10)
    R = X + 5;
  else
    R = X - 7;

  printf("Resultado = %d\n", R);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
