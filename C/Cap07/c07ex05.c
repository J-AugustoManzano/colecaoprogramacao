// c07ex05.c

#include <stdio.h>

void FATORIAL(int N, int *Fat) {
  *Fat = 1;
  for (int I = 1; I <= N; I++) {
    *Fat *= I;
  }
}

int Resp, Limite;
  
int main(void) {
  Resp = 1;

  printf("Qual fatorial: ");
  scanf("%d", &Limite);
  while (getchar() != '\n');

  FATORIAL(Limite, &Resp);

  printf("Fatorial = %d\n", Resp);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
