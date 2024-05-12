<?php
// c06ex01.php

$MD = array();
$SOMA = 0.0;

for ($I = 0; $I <= 7; $I++) {
  printf("Entre a media do aluno %d: ", $I + 1);
  $MD[$I] = floatval(trim(fgets(STDOUT)));
  $SOMA += $MD[$I];
}

$MEDIA = $SOMA / 8;

printf("\n");
printf("Media geral: %.2f\n", $MEDIA);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
