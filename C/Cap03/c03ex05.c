// c03ex05.c

#include <stdio.h>

int main(void) {
  char nome[100];

  printf("Entre seu nome: ");
  scanf("%99[^\n]", nome);

  printf("Ola, %s! Bem-vindo ao estudo de C.\n", nome);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
