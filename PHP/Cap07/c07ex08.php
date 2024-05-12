<?php
// c07ex08.php

function FATORIAL($N): int {
  if ($N == 0) {
    return 1;
  } else {
    return $N * FATORIAL($N - 1);
  }
}

$Limite;

printf("Qual fatorial: ");
$Limite = intval(trim(fgets(STDOUT)));

printf("Fatorial = %d\n", FATORIAL($Limite));

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
