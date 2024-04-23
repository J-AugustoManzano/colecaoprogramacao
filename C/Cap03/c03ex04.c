// c03ex04.c

#include <stdio.h>

int main(void) {
  double HT, VH, PD, SB, TD, SL;

  printf("Entre quantidade de horas trabalhadas ..: ");
  scanf("%lf", &HT);
  while (getchar() != '\n');

  printf("Entre valor do salario-hora ............: ");
  scanf("%lf", &VH);
  while (getchar() != '\n');

  printf("Entre valor do percentual de desconto ..: ");
  scanf("%lf", &PD);
  while (getchar() != '\n');

  SB = HT * VH;
  TD = (PD / 100) * SB;
  SL = SB - TD;

  printf("\n");
  printf("Salario Bruto ....: %9.2lf\n", SB);
  printf("Salario Liquido ..: %9.2lf\n", SL);

  printf("\nTecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
