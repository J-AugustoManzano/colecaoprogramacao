<?php
// c05ex05.php

$I = 1;
do {
  printf("Entre um valor numerico: ");
  fflush(STDOUT);
  $N = intval(trim(fgets(STDIN)));

  $R = $N * 3;

  printf("Resultado = %d\n", $R);
  printf("\n");

  $I++;
} while (!($I > 5));

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
