<?php
// c06ex04.php

$A = array();

printf("Entre a quantidade de elementos da matriz: ");
$N = intval(trim(fgets(STDOUT)));
printf("\n");

for ($I = 0; $I <= $N - 1; $I++) {
  printf("Entre o %do. nome: ", $I + 1);
  $A[$I] = trim(fgets(STDOUT));
}

printf("\n");
printf("Foram fornecidos os nomes:\n");
printf("\n");

for ($I = 0; $I <= $N - 1; $I++)
  printf("Nome %d = %s\n", $I + 1, $A[$I]);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
