// c08ex05.c

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h>

char *textoMaiusculo(char *texto) {
  char *p = texto;
  while (*p != '\0') {
    *p = toupper((unsigned char)*p);
    ++p;
  }
  return texto;
}

int main(void) {
  char NOME[10][50];
  char RESP[4];
  char PESQ[50];
  char RESPOSTA[4];
  int I;
  bool ACHA;

  printf("PESQUISA SEQUENCIAL DE NOMES\n\n");

  for (I = 0; I <= 9; ++I) {
    printf("Entre o %2do. nome: ", I + 1);
    fgets(NOME[I], 50, stdin);
    NOME[I][strcspn(NOME[I], "\n")] = '\0';
  }

  strcpy(RESP, "SIM");
  while (strcmp(RESP, "SIM") == 0) {
    printf("\nEntre o nome a ser pesquisado: ");
    fgets(PESQ, 50, stdin);
    PESQ[strcspn(PESQ, "\n")] = '\0';
    I = 0;
    ACHA = false;

    while (I <= 9 && ACHA == false) {
      if (strcmp(PESQ, NOME[I]) == 0) {
        ACHA = true;
      } else {
        ++I;
      }
    }

    if (ACHA == true) {
      printf("\n%s foi localizado na posicao %d\n", PESQ, I + 1);
    } else {
      printf("\n%s nao foi localizado\n", PESQ);
    }

    do {
      printf("\nDeseja continuar? (SIM/NAO): ");
      fgets(RESPOSTA, 50, stdin);
      RESPOSTA[strcspn(RESPOSTA, "\n")] = '\0';
      strcpy(RESP, textoMaiusculo(RESPOSTA));
      if (strcmp(RESP, "SIM") != 0 && strcmp(RESP, "NAO") != 0) {
        printf("Informe apenas SIM ou NAO.\n\n");
      }
    } while (strcmp(RESP, "SIM") != 0 && strcmp(RESP, "NAO") != 0);
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
