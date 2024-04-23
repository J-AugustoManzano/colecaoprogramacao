// c06ex04.c

#include <stdio.h>
#include <stdlib.h>

int main(void) {
  char **A;
  int N, I;

  printf("Entre a quantidade de elementos da matriz: ");
  scanf("%d", &N);
  printf("\n");

  A = (char **)malloc(N * sizeof(char *));

  for (I = 0; I <= N - 1; ++I) {
    A[I] = (char *)malloc(50 * sizeof(char));
    printf("Entre o %do. nome: ", I + 1);
    scanf("%s", A[I]);
    while (getchar() != '\n');
  }

  printf("\n");
  printf("Foram fornecidos os nomes:\n\n");

  for (I = 0; I <= N - 1; ++I) {
    printf("Nome %d = %s\n", I + 1, A[I]);
  }

  for (I = 0; I <= N - 1; ++I) {
    free(A[I]);
  }
  free(A);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');
  
  return 0;
}
