// c04ex07.c

#include <stdio.h>

int main(void) {
  int Numero;

  printf("Entre um numero inteiro: ");
  scanf("%d", &Numero);
  while (getchar() != '\n');

  if ((Numero >= 20) && (Numero <= 90))
    printf("O numero esta na faixa de 20 a 90.\n");
  else
    printf("O numero esta fora da faixa de 20 a 90.\n");

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
