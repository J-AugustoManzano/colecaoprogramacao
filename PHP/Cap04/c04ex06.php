<?php
// c04ex06.php

printf("CALCULADORA\n\n");

printf("Entre o 1o. valor numerico: ");
$A = floatval(trim(fgets(STDIN)));

printf("Entre o 2o. valor numerico: ");
$B = floatval(trim(fgets(STDIN)));

printf("\n");
printf("Escolha uma opcao de menu:\n");
printf("\n");
printf("[1] - Adicao\n");
printf("[2] - Subtracao\n");
printf("[3] - Multiplicacao\n");
printf("[4] - Divisao\n");
printf("\n");

printf("==> ");
$Opcao = intval(trim(fgets(STDIN)));

printf("\n");

switch ($Opcao) {
  case 1:
    printf("Calculo de adicao\n");
    printf("Resultado: %.2f\n", $A + $B);
    break;
  case 2:
    printf("Calculo de subtracao\n");
    printf("Resultado: %.2f\n", $A - $B);
    break;
  case 3:
    printf("Calculo de multiplicacao\n");
    printf("Resultado: %.2f\n", $A * $B);
    break;
  case 4:
    printf("Calculo de divisao\n");
    if ($B == 0)
      printf("Resultado: ERRO\n");
    else
      printf("Resultado: %.2f\n", $A / $B);
    break;
  default:
    printf("Entrada invalida\n");
    printf("Tente novamente em outro momento\n");
    break;
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
