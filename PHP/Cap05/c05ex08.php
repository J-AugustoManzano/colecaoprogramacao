<?php
// c05ex08.php

$RESP = "S";
do {

  printf("Entre um valor numerico: ");
  $N = intval(trim(fgets(STDIN)));

  $R = $N * 3;

  printf("Resultado = %d\n", $R);
  printf("\n");

  printf("Deseja continuar? (S/N): ");
  fflush(STDOUT);
  $RESP = strtoupper(trim(fgets(STDIN)));

  printf("\n");
} while (strtoupper($RESP) == "S");

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
