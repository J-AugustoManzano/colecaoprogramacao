// c05ex07.c

#include <stdio.h>

int main(void) {
  int I, N, R;

  I = 1;
  do {
    printf("Entre um valor numerico: ");
    scanf("%d", &N);
    while (getchar() != '\n'); 

    R = N * 3;

    printf("Resultado = %d\n\n", R);

    ++I;
  } while (I <= 5);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n'); 

  return 0;
}
