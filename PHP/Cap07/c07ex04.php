<?php
// c07ex04.php

function Fatorial($N) {
  $Fat = 1;
  for ($I = 1; $I <= $N; $I++) {
    $Fat *= $I;
  }
  printf("Fatorial = %d\n", $Fat);
}

printf("Qual fatorial: ");
$Limite = intval(trim(fgets(STDOUT)));

Fatorial($Limite);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
