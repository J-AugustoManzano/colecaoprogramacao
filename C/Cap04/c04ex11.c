// c04ex11.c

#include <stdio.h>

int main(void) {
  int N, R4, R5;

  printf("Entre um numero inteiro: ");
  scanf("%d", &N);
  while (getchar() != '\n');

  R4 = N % 4;
  R5 = N % 5;

  if (R4 == 0 && R5 == 0)
    printf("Resultado = %d\n", N);
  else
    printf("Valor nao e divisivel por 4 e 5\n");

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
