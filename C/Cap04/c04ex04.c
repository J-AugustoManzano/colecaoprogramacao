// c04ex04.c

#include <stdio.h>

int main(void) {
  float N1, N2, N3, N4, NE, MD1, MD2;

  printf("Entre a 1a. nota .......: ");
  scanf("%f", &N1);
  while (getchar() != '\n');

  printf("Entre a 2a. nota .......: ");
  scanf("%f", &N2);
  while (getchar() != '\n');

  printf("Entre a 3a. nota .......: ");
  scanf("%f", &N3);
  while (getchar() != '\n');

  printf("Entre a 4a. nota .......: ");
  scanf("%f", &N4);
  while (getchar() != '\n');
  printf("\n");

  MD1 = (N1 + N2 + N3 + N4) / 4;

  if (MD1 >= 7) {
    printf("Aprovado\n");
    printf("Media: %.2f\n", MD1);
  } else {
    printf("Entre a nota de exame ..: ");
    scanf("%f", &NE);
    while (getchar() != '\n');
    printf("\n");
    
    MD2 = (MD1 + NE) / 2;
    
    if (MD2 >= 5)
      printf("Aprovado em exame\n");
    else
      printf("Reprovado\n");
    printf("Media: %.2f\n", MD2);
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');
  
  return 0;
}
