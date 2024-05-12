<?php
// c04ex10.php

printf("Entre valor para a variavel <A>: ");
$A = intval(trim(fgets(STDIN)));

printf("Entre valor para a variavel <B>: ");
$B = intval(trim(fgets(STDIN)));

printf("Entre valor para a variavel <X>: ");
$X = intval(trim(fgets(STDIN)));

if (!($X > 5))
  $C = $A + $B;
else
  $C = $A - $B;

printf("\n");
printf("Resultado = %d\n", $C);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
