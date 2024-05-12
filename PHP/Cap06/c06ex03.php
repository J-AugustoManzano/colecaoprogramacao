<?php
// c06ex03.php

class Aluno {
  public $Nome;
  public $Turma;
  public $Sala;
  public $Notas = array();
}

$ALUNO = array();

printf("Escola de Computacao XPTO\n");
printf("Cadastro Escolar de Aluno\n");
printf("\n");

for ($I = 0; $I <= 7; $I++) {
  $ALUNO[$I] = new Aluno(); 

  printf("Aluno: %d\n", $I + 1);
  printf("\n");

  printf("Nome ..............: ");
  $ALUNO[$I]->Nome = trim(fgets(STDIN));
  
  printf("Turma .............: ");
  $ALUNO[$I]->Turma = trim(fgets(STDIN));

  printf("Sala ..............: ");
  $ALUNO[$I]->Sala = intval(trim(fgets(STDIN)));

  printf("\n");

  for ($J = 0; $J <= 3; $J++) {
    printf("Nota %d ............: ", $J + 1);
    $ALUNO[$I]->Notas[$J] = floatval(trim(fgets(STDIN)));
  }

  printf("\n");
}

printf("Escola de Computacao XPTO\n");
printf("Cadastro Escolar de Aluno\n");
printf("\n");
printf("DADOS DOS ALUNOS\n");
printf("\n");

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

for ($I = 0; $I <= 7; $I++) {
  printf("%5d ", $I + 1);
  printf("%-30s ", $ALUNO[$I]->Nome);
  printf("%4d ", $ALUNO[$I]->Sala);
  printf("%5s", $ALUNO[$I]->Turma);
  for ($J = 0; $J <= 3; $J++)
    printf("%6.1f", $ALUNO[$I]->Notas[$J]);
  printf("\n");
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
