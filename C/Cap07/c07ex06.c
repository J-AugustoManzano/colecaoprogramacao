// c07ex06.c

#include <stdio.h>

int FATORIAL(int N) {
  int Fat = 1;
  for (int I = 1; I <= N; I++) {
    Fat *= I;
  }
  return Fat;
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
