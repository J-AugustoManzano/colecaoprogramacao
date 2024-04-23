// c07ex09.c

#include <stdio.h>

int FATORIAL_BASE(int N, int P) {
  if (N == 0)
    return P;
  else
    return FATORIAL_BASE(N - 1, N * P);
}

int FATORIAL(int N) {
  return FATORIAL_BASE(N, 1);
}

int main(void) {
  int LIMITE;

  printf("Qual fatorial: ");
  scanf("%d", &LIMITE);
  while (getchar() != '\n');

  printf("Fatorial = %d\n", FATORIAL(LIMITE));

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
