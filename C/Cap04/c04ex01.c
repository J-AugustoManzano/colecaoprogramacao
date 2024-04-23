// c04ex01.c

#include <stdio.h>

int main(void) {
  int A, B, X;

  printf("Entre o 1o. valor numerico: ");
  scanf("%d", &A);
  while (getchar() != '\n'); 

  printf("Entre o 2o. valor numerico: ");
  scanf("%d", &B);
  while (getchar() != '\n'); 

  X = A + B;

  if (X > 10)
    printf("Resultado = %d\n", X);

  printf("\nTecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
