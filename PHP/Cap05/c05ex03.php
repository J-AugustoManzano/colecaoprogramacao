<?php
// c05ex03.php

$I = 1;
while (!($I > 5)) {
  printf("Entre um valor numerico: ");
  fflush(STDOUT);
  $N = intval(trim(fgets(STDIN)));

  $R = $N * 3;

  printf("Resultado = %d\n", $R);
  printf("\n");

  $I++;
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
