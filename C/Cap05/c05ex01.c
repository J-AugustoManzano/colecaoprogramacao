// c05ex01.c

#include <stdio.h>

int main(void) {
  int I, N, R;

  I = 1;
  while (I <= 5) {
    printf("Entre um valor numerico: ");
    scanf("%d", &N);
    while (getchar() != '\n');

    R = N * 3;

    printf("Resultado = %d\n\n", R);

    I++;
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
