<?php
// c04ex07.php

printf("VERIFICAR SE O NUMERO ESTA NA FAIXA DE 20 A 90\n\n");

printf("Entre um numero inteiro: ");
$Numero = intval(trim(fgets(STDIN)));

if (($Numero >= 20) && ($Numero <= 90))
  printf("O numero esta na faixa de 20 a 90.\n");
else
  printf("O numero esta fora da faixa de 20 a 90.\n");

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));
?>
