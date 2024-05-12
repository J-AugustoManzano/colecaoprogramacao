<?php
// c07ex01.php

function ROTSOMA() {
  printf("\n");
  printf("Rotina de Adicao\n");
  printf("\n");
  printf("Entre o 1o. valor: ");
  $A1 = floatval(trim(fgets(STDOUT)));
  printf("Entre o 2o. valor: ");
  $B1 = floatval(trim(fgets(STDOUT)));
  printf("\n");
  $R1 = $A1 + $B1;
  printf("O resultado da operacao equivale a: %.2f\n", $R1);
  printf("\n");
}

function ROTSUBTRACAO() {
  printf("\n");
  printf("Rotina de Subtracao\n");
  printf("\n");
  $A2 = floatval(trim(fgets(STDOUT)));
  printf("Entre o 2o. valor: ");
  $B2 = floatval(trim(fgets(STDOUT)));
  printf("\n");
  $R2 = $A2 - $B2;
  printf("O resultado da operacao equivale a: %.2f\n", $R2);
  printf("\n");
}

function ROTMULTIPLICACAO() {
  printf("\n");
  printf("Rotina de Multiplicacao\n");
  printf("\n");
  $A3 = floatval(trim(fgets(STDOUT)));
  printf("Entre o 2o. valor: ");
  $B3 = floatval(trim(fgets(STDOUT)));
  printf("\n");
  $R3 = $A3 * $B3;
  printf("O resultado da operacao equivale a: %.2f\n", $R3);
  printf("\n");
}

function ROTDIVISAO() {
  printf("\n");
  printf("Rotina de Divisao\n");
  printf("\n");
  $A4 = floatval(trim(fgets(STDOUT)));
  printf("Entre o 2o. valor: ");
  $B4 = floatval(trim(fgets(STDOUT)));
  printf("\n");
  if ($B4 == 0) {
    printf("O resultado da operacao equivale a: ERRO\n");
  } else {
    $R4 = $A4 / $B4;
    printf("O resultado da operacao equivale a: %.2f\n", $R4);
  }
  printf("\n");
}

$OPCAO = 0;

while ($OPCAO != 5) {
  printf("CALCULADORA - V1\n");
  printf("\n");
  printf("[1] - Adicao\n");
  printf("[2] - Subtracao\n");
  printf("[3] - Multiplicacao\n");
  printf("[4] - Divisao\n");
  printf("[5] - Fim de Programa\n");
  printf("\n");
  printf("Escolha uma opcao: ");
  $OPCAO = intval(trim(fgets(STDOUT)));
  if ($OPCAO != 5) {
    switch ($OPCAO) {
      case 1:
        ROTSOMA();
        break;
      case 2:
        ROTSUBTRACAO();
        break;
      case 3:
        ROTMULTIPLICACAO();
        break;
      case 4:
        ROTDIVISAO();
        break;
      default:
        printf("\n");
        printf("Opcao invalida - Tente novamente\n");
        printf("\n");
    }
  }
}

?>
