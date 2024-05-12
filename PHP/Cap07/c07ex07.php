<?php
// c07ex07.php

function IGUAL($A, $B): bool {
  return $A == $B;
}

printf("Informe o 1o. valor: ");
$X = intval(trim(fgets(STDOUT)));
printf("Informe o 2o. valor: ");
$Y = intval(trim(fgets(STDOUT)));

if (IGUAL($X, $Y)) {
  printf("Valores sao iguais\n");
} else {
  printf("Valores sao diferentes\n");
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
