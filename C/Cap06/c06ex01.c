// c06ex01.c

#include <stdio.h>

int main(void) {
  double MD[8], SOMA = 0.0, MEDIA;

  for (int I = 0; I <= 7; ++I) {
    printf("Entre a media do aluno %d: ", I + 1);
    scanf("%lf", &MD[I]);
    while (getchar() != '\n');

    SOMA += MD[I];
  }

  MEDIA = SOMA / 8;

  printf("\n");
  printf("Media geral: %.2lf\n", MEDIA);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
