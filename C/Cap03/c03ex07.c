// c03ex07.c

#include <stdio.h>
#include <string.h>

int main(void) {
  char frase[] = "Aprendendo C com o Professor Manzano";
  char palavras[10][20]; 

  printf("Frase ......: %s\n", frase);
  printf("              ------------------------------------\n");
  printf("              000000000111111111122222222223333333\n");
  printf("              012345678901234567890123456789012345\n");
  printf("\n");

  printf("Tamanho ....: %ld caracteres\n\n", strlen(frase));

  sscanf(frase, "%s %s %s %s", palavras[0], palavras[1], 
                               palavras[2], palavras[3]);

  printf("Palavra 1 .............: %s\n", palavras[0]);
  printf("Palavra 2 .............: %s\n", palavras[1]);
  printf("Palavra 3 .............: %s\n", palavras[2]);
  printf("Palavra 4 .............: %s\n", palavras[3]);
  printf("\n");

  printf("Letra 1 da Palavra 1 ..: %c\n", palavras[0][0]);
  printf("Letra 2 da Palavra 1 ..: %c\n", palavras[0][1]);
  printf("Letra 3 da Palavra 1 ..: %c\n", palavras[0][2]);
  printf("Letra 4 da Palavra 1 ..: %c\n", palavras[0][3]);

  printf("\n");
  printf("A palavra 'C' na posicao: ");
  printf("%ld\n\n", (long)(strstr(frase, "C") - frase) + 1);

  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
