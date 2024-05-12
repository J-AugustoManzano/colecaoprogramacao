<?php
// c04ex02.php

printf("TROCA DE VALORES\n\n");

printf("Entre o 1o. valor numerico inteiro: ");
$A = intval(trim(fgets(STDIN)));

printf("Entre o 2o. valor numerico inteiro: ");
$B = intval(trim(fgets(STDIN)));

if ($A > $B) {
  $X = $A;
  $A = $B;
  $B = $X;
}

printf("Os valores sao: %d e %d.\n", $A, $B);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
