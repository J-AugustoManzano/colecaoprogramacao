// c04ex10.c

#include <stdio.h>

int main(void) {
  int A, B, X, C;

  printf("Entre valor para a variavel <A>: ");
  scanf("%d", &A);
  while (getchar() != '\n');

  printf("Entre valor para a variavel <B>: ");
  scanf("%d", &B);
  while (getchar() != '\n');

  printf("Entre valor para a variavel <X>: ");
  scanf("%d", &X);
  while (getchar() != '\n');

  if (!(X > 5))
    C = A + B;
  else
    C = A - B;

  printf("\n");
  printf("Resultado = %d\n", C);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
