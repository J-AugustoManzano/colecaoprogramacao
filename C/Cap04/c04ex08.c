// c04ex08.c

#include <stdio.h>
#include <ctype.h>

int main(void) {
  char Transp;

  printf("Escolha o tipo de transporte:\n\n");
  printf("[M] - Motocicleta\n");
  printf("[S] - Scooter\n\n");

  printf("==> ");
  scanf("%c", &Transp);
  while (getchar() != '\n');
  printf("\n");

  Transp = toupper(Transp);

  if (Transp == 'M' || Transp == 'S')
    printf("Transporte valido.\n");
  else
    printf("Transporte invalido.\n");

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
