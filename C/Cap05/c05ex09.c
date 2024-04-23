// c05ex09.c

#include <stdio.h>

int main(void) {
  int I, N, R;

  I = 1;
  loop:
    printf("Entre um valor numerico: ");
    scanf("%d", &N);
    while (getchar() != '\n');

    R = N * 3;

    printf("Resultado = %d\n\n", R);

    if (I > 4) goto endloop;
    ++I;

    goto loop;
  endloop:

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n'); 

  return 0;
}
