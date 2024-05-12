<?php
// c04ex09.php

printf("Classificacao esportiva\n\n");

printf("Entre '1' se atleta pontuou na 1a. prova\n");
printf("Entre '1' se atleta pontuou na 2a. prova\n");
printf("\nQualquer outro valor se nao pontuou nas provas\n");

printf("\nProva 1: ");
$P1 = intval(trim(fgets(STDIN)));

printf("Prova 2: ");
$P2 = intval(trim(fgets(STDIN)));

if ($P1 == 1 xor $P2 == 1)
  printf("\nAtleta participa da terceira prova.\n");
else {
  printf("\nAtleta nao participa da terceira prova.\n");
  if ($P1 == 1 && $P2 == 1)
    printf("Classificado para a final.\n");
  else
    printf("Desclassificado da competicao.\n");
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
