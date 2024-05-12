<?php
// c08ex10.php

function FibonacciBase($N, $X, $Y): int {
  if ($N == 0) {
    return $X;
  } else if ($N == 1) {
    return $Y;
  } else {
    return FibonacciBase($N - 1, $Y, $X + $Y);
  }
}

function Fibonacci($N): int {
  return FibonacciBase($N, 0, 1);
}

for ($I = 0; $I <= 14; $I++) {
  printf("%2d - %d\n", $I, Fibonacci($I));
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
