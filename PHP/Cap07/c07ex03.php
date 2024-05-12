<?php
// c07ex03.php

function TROCA() {
  global $A, $B;
  $X = $A;
  $A = $B;
  $B = $X;
}

printf("Entre um valor para a variavel <A>: ");
$A = intval(trim(fgets(STDOUT)));
printf("Entre um valor para a variavel <B>: ");
$B = intval(trim(fgets(STDOUT)));

TROCA();

printf("\n");
printf("Variavel <A> com valor %d\n", $A);
printf("Variavel <B> com valor %d\n", $B);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
