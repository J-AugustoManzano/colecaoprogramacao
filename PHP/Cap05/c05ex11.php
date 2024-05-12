<?php
// c05ex11.php

for ($I = 1; $I <= 5; $I++) {
  printf("Entre um valor numerico: ");
  $N = intval(trim(fgets(STDOUT)));

  $R = $N * 3;

  printf("Resultado = %d\n\n", $R);
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
