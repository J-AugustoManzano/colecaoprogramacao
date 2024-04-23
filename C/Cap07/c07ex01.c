// c07ex01.c

#include <stdio.h>

void ROTSOMA(void) {
  float A1, B1, R1;
  printf("\n");
  printf("Rotina de Adicao\n");
  printf("\n");
  printf("Entre o 1o. valor: ");
  scanf("%f", &A1);
  while (getchar() != '\n');
  printf("Entre o 2o. valor: ");
  scanf("%f", &B1);
  while (getchar() != '\n');
  printf("\n");
  R1 = A1 + B1;
  printf("O resultado da operacao equivale a: %.2f\n", R1);
  printf("\n");
}

void ROTSUBTRACAO(void) {
  float A2, B2, R2;
  printf("\n");
  printf("Rotina de Subtracao\n");
  printf("\n");
  printf("Entre o 1o. valor: ");
  scanf("%f", &A2);
  while (getchar() != '\n');
  printf("Entre o 2o. valor: ");
  scanf("%f", &B2);
  while (getchar() != '\n');
  printf("\n");
  R2 = A2 - B2;
  printf("O resultado da operacao equivale a: %.2f\n", R2);
  printf("\n");
}

void ROTMULTIPLICACAO(void) {
  float A3, B3, R3;
  printf("\n");
  printf("Rotina de Multiplicacao\n");
  printf("\n");
  printf("Entre o 1o. valor: ");
  scanf("%f", &A3);
  while (getchar() != '\n');
  printf("Entre o 2o. valor: ");
  scanf("%f", &B3);
  while (getchar() != '\n');
  printf("\n");
  R3 = A3 * B3;
  printf("O resultado da operacao equivale a: %.2f\n", R3);
  printf("\n");
}

void ROTDIVISAO(void) {
  float A4, B4, R4;
  printf("\n");
  printf("Rotina de Divisao\n");
  printf("\n");
  printf("Entre o 1o. valor: ");
  scanf("%f", &A4);
  while (getchar() != '\n');
  printf("Entre o 2o. valor: ");
  scanf("%f", &B4);
  while (getchar() != '\n');
  printf("\n");
  if (B4 == 0)
    printf("O resultado da operacao equivale a: ERRO\n");
  else {
    R4 = A4 / B4;
    printf("O resultado da operacao equivale a: %.2f\n", R4);
  }
  printf("\n");
}

int main(void) {
  int OPCAO = 0;
  
  while (OPCAO != 5) {
    printf("CALCULADORA - V1\n");
    printf("\n");
    printf("[1] - Adicao\n");
    printf("[2] - Subtracao\n");
    printf("[3] - Multiplicacao\n");
    printf("[4] - Divisao\n");
    printf("[5] - Fim de Programa\n");
    printf("\n");
    printf("Escolha uma opcao: ");
    scanf("%d", &OPCAO);
    while (getchar() != '\n');
    if (OPCAO != 5) {
      switch (OPCAO) {
        case 1: ROTSOMA();          break;
        case 2: ROTSUBTRACAO();     break;
        case 3: ROTMULTIPLICACAO(); break;
        case 4: ROTDIVISAO();       break;
        default:
          printf("\n");
          printf("Opcao invalida - Tente novamente\n");
          printf("\n");
      }
    }
  }
  
  return 0;
}
