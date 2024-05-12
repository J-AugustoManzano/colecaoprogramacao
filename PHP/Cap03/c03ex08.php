<?php
// c02ex08.php

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

printf("ADICAO DE NUMEROS\n\n");

// Entrada de dados

printf("Entre o 1o. valor numerico inteiro: ");
$A = intval(trim(fgets(STDIN)));

printf("Entre o 2o. valor numerico inteiro: ");
$B = intval(trim(fgets(STDIN)));

// Processamento de dados

$X = $A + $B; // Cálculo da adição

// Saída de dados

printf("Resultado da adicao = %d\n", $X);

// Encerramento do programa

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
