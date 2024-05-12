<?php
// c08ex04.php

$Nomes = array();

printf("CLASSIFICACAO DE NOMES (DECRESCENTE)\n");
printf("\n");

for ($I = 0; $I <= 4; $I++) {
  printf("Entre o %do. nome: ", $I + 1);
  $Nomes[$I] = trim(fgets(STDOUT));
}

for ($I = 0; $I <= 3; $I++) {
  for ($J = $I + 1; $J <= 4; $J++) {
    if ($Nomes[$I] < $Nomes[$J]) {
      $X = $Nomes[$I];
      $Nomes[$I] = $Nomes[$J];
      $Nomes[$J] = $X;
    }
  }
}

printf("\n");
for ($I = 0; $I <= 4; $I++) {
  printf("%do. nome: %s\n", $I + 1, $Nomes[$I]);
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
