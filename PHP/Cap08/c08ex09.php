<?php
// c08ex09.php

function Fibonacci($N): int {
  if ($N == 0) {
    return 0;
  }
  if ($N == 1) {
    return 1;
  }
  if ($N >= 2) {
    return Fibonacci($N - 1) + Fibonacci($N - 2);
  }
}

for ($I = 0; $I <= 14; $I++) {
  printf("%2d - %d\n", $I, Fibonacci($I));
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
