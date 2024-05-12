<?php
// c04ex04.php

printf("CALCULO DE MEDIA\n\n");

printf("Entre a 1a. nota .......: ");
$N1 = floatval(trim(fgets(STDIN)));

printf("Entre a 2a. nota .......: ");
$N2 = floatval(trim(fgets(STDIN)));

printf("Entre a 3a. nota .......: ");
$N3 = floatval(trim(fgets(STDIN)));

printf("Entre a 4a. nota .......: ");
$N4 = floatval(trim(fgets(STDIN)));

printf("\n");

$MD1 = ($N1 + $N2 + $N3 + $N4) / 4;

if ($MD1 >= 7) {
  printf("Aprovado\n");
  printf("Media: %.2f\n", $MD1);
} else {
  printf("Entre a nota de exame ..: ");
  $NE = floatval(trim(fgets(STDIN)));

  printf("\n");

  $MD2 = ($MD1 + $NE) / 2;

  if ($MD2 >= 5) {
    printf("Aprovado em exame\n");
  } else {
    printf("Reprovado\n");
  }
  printf("Media: %.2f\n", $MD2);
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
