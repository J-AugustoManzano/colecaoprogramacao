<?php
// c05ex09.php

$I = 1;
loop:
  printf("Entre um valor numerico: ");
  $N = intval(trim(fgets(STDOUT)));

  $R = $N * 3;

  printf("Resultado = %d\n\n", $R);

  if ($I > 4) goto endloop;
  ++$I;

  goto loop;
endloop:

printf("\n");
printf("Tecle <Enter> para encerrar... ");
fgets(STDIN);

?>
