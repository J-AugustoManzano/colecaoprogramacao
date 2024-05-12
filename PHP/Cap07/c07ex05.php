<?php
// c07ex05.php

function FATORIAL($N, &$Fat) {
  $Fat = 1;
  for ($I = 1; $I <= $N; $I++) {
    $Fat *= $I;
  }
}

$Limite;
$Fatorial;

printf("Qual fatorial: ");
$Limite = intval(trim(fgets(STDOUT)));

FATORIAL($Limite, $Fatorial);

printf("Fatorial = %d\n", $Fatorial);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
