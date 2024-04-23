// c03ex01.c

#include <stdio.h>

int main(void) {
  int A, B, X;

  printf("Entre o 1º valor numerico inteiro: ");
  scanf("%d", &A);
  while (getchar() != '\n'); 

  printf("Entre o 2º valor numerico inteiro: ");
  scanf("%d", &B);
  while (getchar() != '\n'); 

  X = A + B;

  printf("Resultado = %d\n", X);

  printf("\nTecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
