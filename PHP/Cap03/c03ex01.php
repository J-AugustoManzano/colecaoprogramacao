<?php
// c02ex01.php

printf("ADICAO DE NUMEROS\n\n");

printf("Entre o 1o. valor numerico inteiro: ");
$A = intval(trim(fgets(STDIN)));

printf("Entre o 2o. valor numerico inteiro: ");
$B = intval(trim(fgets(STDIN)));

$X = $A + $B;

printf("Resultado da adicao = %d\n", $X);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
