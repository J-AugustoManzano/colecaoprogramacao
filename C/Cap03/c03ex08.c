// c03ex08.c

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

#include <stdio.h>

int main(void) {
  int A, B, X;

  // Entrada de dados 
  
  printf("Entre o 1º valor numerico inteiro: ");
  scanf("%d", &A);
  while (getchar() != '\n'); 

  printf("Entre o 2º valor numerico inteiro: ");
  scanf("%d", &B);
  while (getchar() != '\n'); 

  // Processamento de dados 
  
  X = A + B; // Cálculo da adição

  // Saída de dados 

  printf("Resultado = %d\n", X);

  printf("\nTecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
