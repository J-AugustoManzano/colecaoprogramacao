<?php
// c08ex03.php

$Numeros =  array();

printf("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n");
printf("\n");

for ($I = 0; $I <= 4; $I++) {
  printf("Entre o %do. numero: ", $I + 1);
  $Numeros[$I] = intval(trim(fgets(STDOUT)));
}

for ($I = 0; $I <= 3; $I++) {
  for ($J = $I + 1; $J <= 4; $J++) {
    if ($Numeros[$I] > $Numeros[$J]) {
      $X = $Numeros[$I];
      $Numeros[$I] = $Numeros[$J];
      $Numeros[$J] = $X;
    }
  }
}

printf("\n");
for ($I = 0; $I <= 4; $I++) {
  printf("%do. numero: %d\n", $I + 1, $Numeros[$I]);
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
