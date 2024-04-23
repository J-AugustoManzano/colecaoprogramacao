// c03ex06.c

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* inverte(const char* texto) {
  int tamanho = strlen(texto);
  char* invertido = malloc((tamanho + 1) * sizeof(char));
  for (int i = 0; i <= tamanho - 1; i++) {
    invertido[i] = texto[tamanho - i - 1];
  }
  invertido[tamanho] = '\0';
  return invertido;
}

char* trocar(const char* texto, int posicao, char novoCaractere) {
  int tamanho = strlen(texto);
  char* novoTexto = malloc((tamanho + 1) * sizeof(char));
  strcpy(novoTexto, texto);
  novoTexto[posicao - 1] = novoCaractere;
  return novoTexto;
}

int main(void) {
  char palavra[] = "COMPUTADOR";
  int tamanho = strlen(palavra);
  char copias[100];
  char* novaPalavra = trocar(palavra, 7, 'O');

  printf("Palavra ........: %s\n", palavra);
  printf("\n");
  printf("Lado esquerdo ..: %.3s\n", palavra);
  printf("Centro .........: %.4s\n", palavra + tamanho / 2 - 2);
  printf("Lado direito ...: %.3s\n", palavra + tamanho - 3);
  printf("Reverso ........: %s\n", inverte(palavra));
  strcpy(copias, palavra);
  strcat(copias, palavra);
  strcat(copias, palavra);
  printf("Copias .........: %s\n", copias);
  printf("Nova palavra ...: %s\n", novaPalavra);
  
  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  free(novaPalavra);
  return 0;
}
