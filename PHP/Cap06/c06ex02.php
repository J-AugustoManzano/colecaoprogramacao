<?php
// c06ex02.php

$NOTAS = array(array());

for ($I = 0; $I <= 7; $I++) {
  printf("Entre as notas do aluno %d:\n", $I + 1);
  for ($J = 0; $J <= 3; $J++) {
    printf("Nota %d: ", $J + 1);
    $NOTAS[$I][$J] = floatval(trim(fgets(STDOUT)));
  }
  printf("\n");
}

printf("\n");
printf("RELATORIO DE NOTAS\n");
printf("\n");
printf("Aluno  Nota1  Nota2  Nota3  Nota4\n");
printf("-----  -----  -----  -----  -----\n");
for ($I = 0; $I <= 7; $I++) {
  printf("%5d", $I + 1);
  for ($J = 0; $J <= 3; $J++)
    printf("%7.1f", $NOTAS[$I][$J]);
  printf("\n");
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
