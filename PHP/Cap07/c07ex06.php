<?php
// c07ex06.php

function FATORIAL($N): int {
  $Fat = 1;
  for ($I = 1; $I <= $N; $I++) {
    $Fat *= $I;
  }
  return $Fat;
}

$Limite;

printf("Qual fatorial: ");
$Limite = intval(trim(fgets(STDOUT)));

printf("Fatorial = %d\n", FATORIAL($Limite));

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
