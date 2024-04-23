// c08ex06.c

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
  int NUMERO[10];
  int I, J, X, PESQ, COMECO, FINAL, MEIO;
  bool ACHA;
  char RESP[4];
  char RESPOSTA[4];

  printf("PESQUISA BINARIA DE NUMEROS\n\n");

  for (I = 0; I <= 9; ++I) {
    printf("Entre o %2do. numero: ", I + 1);
    scanf("%d", &NUMERO[I]);
  }

  for (I = 0; I <= 8; ++I) {
    for (J = I + 1; J <= 9; ++J) {
      if (NUMERO[I] > NUMERO[J]) {
        X = NUMERO[I];
        NUMERO[I] = NUMERO[J];
        NUMERO[J] = X;
      }
    }
  }

  strcpy(RESP, "SIM");
  while (strcmp(RESP, "SIM") == 0) {
    printf("\nEntre o numero a ser pesquisado: ");
    scanf("%d", &PESQ);

    COMECO = 0;
    FINAL = 9;
    ACHA = false;

    while (COMECO <= FINAL && ACHA == false) {
      MEIO = (COMECO + FINAL) / 2;
      if (PESQ == NUMERO[MEIO]) {
        ACHA = true;
      } else if (PESQ < NUMERO[MEIO]) {
        FINAL = MEIO - 1;
      } else {
        COMECO = MEIO + 1;
      }
    }

    if (ACHA == true) {
      printf("\n%d foi localizado na posicao %d\n", PESQ, MEIO + 1);
    } else {
      printf("\n%d nao foi localizado\n", PESQ);
    }

    do {
      printf("\nDeseja continuar? (SIM/NAO): ");
      scanf("%s", RESPOSTA);
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
