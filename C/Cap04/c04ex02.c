// c04ex02.c

#include <stdio.h>

int main(void) {
  int A, B, X;

  printf("Entre o 1o. valor numerico: ");
  scanf("%d", &A);
  while (getchar() != '\n'); 

  printf("Entre o 2o. valor numerico: ");
  scanf("%d", &B);
  while (getchar() != '\n'); 

  if (A > B) {
    X = A;
    A = B;
    B = X;
  }

  printf("Os valores sao: %d e %d.\n", A, B);

  printf("\nTecle <Enter> para encerrar... ");
  while (getchar() != '\n'); 

  return 0;
}
