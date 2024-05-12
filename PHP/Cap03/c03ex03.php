<?php
// c02ex03.php

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
printf("Salario Bruto ....: %f\n", $SB);
printf("Salario Liquido ..: %f\n", $SL);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
