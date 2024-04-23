// c07ex04.c

#include <stdio.h>

void Fatorial(int N) {
  int Fat = 1;
  for (int I = 1; I <= N; I++) {
    Fat *= I;
  }
  printf("Fatorial = %d\n", Fat);
}

int Limite;
  
int main(void) {
  printf("Qual fatorial: ");
  scanf("%d", &Limite);
  while (getchar() != '\n');

  Fatorial(Limite);

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
