<?php
// c05ex10.php

$RESP = "S";
loop:
  printf("Entre um valor numerico: ");
  $N = intval(trim(fgets(STDOUT)));

  $R = $N * 3;

  printf("Resultado = %d\n\n", $R);

  printf("Deseja continuar? (S/N): ");
  fflush(STDOUT);
  $RESP = strtoupper(trim(fgets(STDOUT)));

  printf("\n");
  if ($RESP != "S") goto endloop;

  goto loop;
endloop:

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
