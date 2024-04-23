// c05ex10.c

#include <stdio.h>
#include <ctype.h>

int main(void) {
  char RESP;
  int N, R;

  RESP = 'S';
  loop:
    printf("Entre um valor numerico: ");
    scanf("%d", &N);
    while (getchar() != '\n'); 
    
    R = N * 3;

    printf("Resultado = %d\n\n", R);

    printf("Deseja continuar? (S/N): ");
    scanf(" %c", &RESP);
    while (getchar() != '\n'); 

    printf("\n");
    if (toupper(RESP) != 'S') goto endloop;

    goto loop;
  endloop:

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
