// c04ex09.c

#include <stdio.h>

int main() {
  int P1, P2;

  printf("Classificacao esportiva\n\n");
  printf("Entre '1' se atleta pontuou na 1a. prova\n");
  printf("Entre '1' se atleta pontuou na 2a. prova\n");
  printf("Qualquer outro valor se nao pontuou nas provas\n\n");

  printf("Prova 1: ");
  scanf("%d", &P1);
  while (getchar() != '\n');

  printf("Prova 2: ");
  scanf("%d", &P2);
  while (getchar() != '\n');

  if (P1 == 1 ^ P2 == 1)
    printf("Atleta participa da terceira prova.\n");
  else {
    printf("Atleta nao participa da terceira prova.\n");
    if (P1 == 1 && P2 == 1)
      printf("Classificado para a final.\n");
    else
      printf("Desclassificado da competicao.\n");
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
