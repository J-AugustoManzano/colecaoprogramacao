// c05ex11.c

#include <stdio.h>

int main(void) {
  int I, N, R;

  for (I = 1; I <= 5; I++) {
    printf("Entre um valor numerico: ");
    scanf("%d", &N);
    while (getchar() != '\n');
    
    R = N * 3;

    printf("Resultado = %d\n\n", R);
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
