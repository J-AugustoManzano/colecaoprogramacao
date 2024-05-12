<?php
// c04ex11.php

printf("Entre um numero inteiro: ");
$N = intval(trim(fgets(STDIN)));

$R4 = $N % 4;
$R5 = $N % 5;

if ($R4 == 0 && $R5 == 0)
  printf("Resultado = %d\n", $N);
else
  printf("Valor nao e divisivel por 4 e 5\n");

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
