<?php
// c07ex09.php

function FATORIAL_BASE($N, $P): int {
  if ($N == 0) {
    return $P;
  } else {
    return FATORIAL_BASE($N - 1, $N * $P);
  }
}

function FATORIAL($N): int {
  return FATORIAL_BASE($N, 1);
}

$LIMITE;

printf("Qual fatorial: ");
$LIMITE = intval(trim(fgets(STDOUT)));

printf("Fatorial = %d\n", FATORIAL($LIMITE));

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
