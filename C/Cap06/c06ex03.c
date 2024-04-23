// c06ex03.c

#include <stdio.h>

typedef struct {
  char Nome[50];
  char Turma;
  int Sala;
  float Notas[4];
} Aluno;

int main(void) {
  Aluno ALUNO[8];
  int I, J;

  printf("Escola de Computacao XPTO\n");
  printf("Cadastro Escolar de Aluno\n\n");

  for (I = 0; I <= 7; ++I) {
    printf("Aluno: %d\n\n", I + 1);

    printf("Nome ..............: ");
    scanf("%s", ALUNO[I].Nome);
    while (getchar() != '\n');

    printf("Turma .............: ");
    scanf(" %c", &ALUNO[I].Turma);
    while (getchar() != '\n');

    printf("Sala ..............: ");
    scanf("%d", &ALUNO[I].Sala);
    while (getchar() != '\n');
    printf("\n");

    for (J = 0; J <= 3; ++J) {
      printf("Entre a %da. nota ..: ", J + 1);
      scanf("%f", &ALUNO[I].Notas[J]);
      while (getchar() != '\n');
   }

    printf("\n");
  }

  printf("Escola de Computacao XPTO\n");
  printf("Cadastro Escolar de Aluno\n\n");
  printf("DADOS DOS ALUNOS\n");

  printf("Aluno ");
  printf("Nome                           ");
  printf("Sala ");
  printf("Turma ");
  printf("Nota1 ");
  printf("Nota2 ");
  printf("Nota3 ");
  printf("Nota4\n");

  printf("----- ");
  printf("------------------------------ ");
  printf("---- ");
  printf("----- ");
  printf("----- ");
  printf("----- ");
  printf("----- ");
  printf("-----\n");

  for (I = 0; I <= 7; ++I) {
    printf("%5d ", I + 1);
    printf("%-30s ", ALUNO[I].Nome);
    printf("%4d ", ALUNO[I].Sala);
    printf("%5c ", ALUNO[I].Turma);
    for (J = 0; J <= 3; ++J) {
      printf("%5.1f ", ALUNO[I].Notas[J]);
    }
    printf("\n");
  }

  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');

  return 0;
}
