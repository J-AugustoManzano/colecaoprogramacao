<?php
// c08ex01.php

function validaInteiro($Numero) {
  return preg_match("/^[0-9]+$/", $Numero);
}

do {
  printf("Entre um valor numerico inteiro: ");
  $Numero = trim(fgets(STDOUT));

  if (strlen($Numero) == 0) {
    printf("\nErro: Tecla <Enter> acionada acidentalmente.\n");
    printf("\n");
    continue;
  }

  if (!validaInteiro($Numero)) {
    printf("\nErro: Entre um numero inteiro.\n");
    printf("\n");
    continue;
  }

  break;
} while (true);

printf("\nEntrada valida fornecida: %s\n", $Numero);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
