<?php
// c02ex01.php

printf("CALCULO DE AREA DE UM CIRCULO\n\n");

printf("Entre valor do raio: ");
$R = floatval(trim(fgets(STDIN)));

$A = M_PI * pow($R, 2);

printf("Resultado = %.2f\n", $A);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
