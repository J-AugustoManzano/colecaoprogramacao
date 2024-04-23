// c08ex01.c

#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>
#include <string.h>

bool validaInteiro(const char* Numero) {
  int i;
  int tamanho = strlen(Numero);

  if (tamanho > 0 && Numero[0] == '-')
    i++;

  for (i = 0; i <= tamanho - 1; ++i) {
    if (!(isdigit(Numero[i])))
      return false;
  }

  return true;
}

int main(void) {
  char Numero[100];

  do {
    printf("Entre um valor numerico inteiro: ");
    fgets(Numero, sizeof(Numero), stdin);
    Numero[strcspn(Numero, "\n")] = '\0';
    printf("\n");


    if (Numero[0] == '\0') {
      printf("Erro: Tecla <Enter> acionada acidentalmente.\n");
      printf("\n");
      continue;
    }

    if (!validaInteiro(Numero)) {
      printf("Erro: Entre um numero inteiro.\n");
      printf("\n");
      continue;
    }

    break;
  } while (true);

  printf("Entrada valida fornecida: %s\n", Numero);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
