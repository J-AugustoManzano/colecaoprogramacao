<?php
// c04ex08.php

printf("ESCOLHA O TIPO DE TRANSPORTE:\n\n");

printf("[M] - Motocicleta\n");
printf("[S] - Scooter\n");

printf("\n==> ");
$Transp = strtoupper(trim(fgets(STDIN)));

printf("\n");

if ($Transp == 'M' || $Transp == 'S')
  printf("Transporte valido.\n");
else
  printf("Transporte invalido.\n");

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
