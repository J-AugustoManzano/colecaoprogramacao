<?php
// c07ex02.php

printf("Entre um valor para a variavel <A>: ");
$A = intval(trim(fgets(STDOUT)));
printf("Entre um valor para a variavel <B>: ");
$B = intval(trim(fgets(STDOUT)));

$X = $A;
$A = $B;
$B = $X;

printf("\n");
printf("Variavel <A> com valor %d\n", $A);
printf("Variavel <B> com valor %d\n", $B);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
