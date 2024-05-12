<?php
// c04ex03.php

printf("CALCULO DE RESULTADO\n\n");

printf("Entre o 1o. valor numerico inteiro: ");
$A = intval(trim(fgets(STDIN)));

printf("Entre o 2o. valor numerico inteiro: ");
$B = intval(trim(fgets(STDIN)));

$X = $A + $B;

if ($X >= 10)
  $R = $X + 5;
else
  $R = $X - 7;

printf("Resultado = %d\n", $R);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
