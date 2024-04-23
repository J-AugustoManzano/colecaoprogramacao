// c07ex08.c

#include <stdio.h>

int FATORIAL(int N) {
  if (N == 0)
    return 1;
  else
    return N * FATORIAL(N - 1);
}

int main(void) {
  int Limite;

  printf("Qual fatorial: ");
  scanf("%d", &Limite);
  while (getchar() != '\n');

  printf("Fatorial = %d\n", FATORIAL(Limite));

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
