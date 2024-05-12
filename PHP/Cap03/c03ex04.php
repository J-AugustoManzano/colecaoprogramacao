<?php
// c02ex04.php

printf("CALCULO DE SALARIO LIQUIDO\n\n");

printf("Entre quantidade de horas trabalhadas: ");
$HT = floatval(trim(fgets(STDIN)));

printf("Entre valor do salario por hora: ");
$VH = floatval(trim(fgets(STDIN)));

printf("Entre valor percentual de desconto: ");
$PD = floatval(trim(fgets(STDIN)));

$SB = $HT * $VH;
$TD = ($PD / 100) * $SB;
$SL = $SB - $TD;

printf("\n");
printf("Salario Bruto ....: %9.2f\n", $SB);
printf("Salario Liquido ..: %9.2f\n", $SL);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
