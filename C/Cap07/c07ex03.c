// c07ex03.c

#include <stdio.h>

int A, B;

void TROCA(void) {
  int X = A;
  A = B;
  B = X;
}

int main(void) {
  printf("Entre um valor para a variavel <A>: ");
  scanf("%d", &A);
  while (getchar() != '\n');

  printf("Entre um valor para a variavel <B>: ");
  scanf("%d", &B);
  while (getchar() != '\n');

  TROCA();

  printf("\n");
  printf("Variavel <A> com valor %d\n", A);
  printf("Variavel <B> com valor %d\n", B);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
