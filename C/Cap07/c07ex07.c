// c07ex07.c

#include <stdio.h>
#include <stdbool.h>

bool IGUAL(int A, int B) {
  return A == B;
}

int main(void) {
  int X, Y;

  printf("Informe o 1o. valor: ");
  scanf("%d", &X);
  while (getchar() != '\n');

  printf("Informe o 2o. valor: ");
  scanf("%d", &Y);
  while (getchar() != '\n');

  if (IGUAL(X, Y))
    printf("Valores sao iguais\n");
  else
    printf("Valores sao diferentes\n");

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
