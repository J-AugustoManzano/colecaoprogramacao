// c03ex02.c

#include <stdio.h>
#include <math.h>

int main(void) {
  double R, A;

  printf("Entre valor do raio: ");
  scanf("%lf", &R);
  while (getchar() != '\n'); 

  A = M_PI * pow(R, 2);

  printf("Resultado = %.2lf\n", A);

  printf("\nTecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
