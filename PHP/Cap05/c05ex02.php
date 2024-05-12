<?php
// c05ex02.php

$RESP = "S";
while (strtoupper($RESP) == "S") {

  printf("Entre um valor numerico: ");
  $N = intval(trim(fgets(STDIN)));

  $R = $N * 3;

  printf("Resultado = %d\n\n", $R);

  printf("Deseja continuar? (S/N): ");
  fflush(STDOUT);
  $RESP = strtoupper(trim(fgets(STDIN)));

  printf("\n");
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
