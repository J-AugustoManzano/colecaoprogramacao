<?php
// c08ex06.php

$NUMERO = array();

printf("PESQUISA BINARIA DE NUMEROS\n");
printf("\n");

for ($I = 0; $I <= 9; $I++) {
  printf("Entre o %2do. numero: ", $I + 1);
  $NUMERO[$I] = trim(fgets(STDIN));
}

for ($I = 0; $I <= 8; $I++) {
  for ($J = $I + 1; $J <= 9; $J++) {
    if ($NUMERO[$I] > $NUMERO[$J]) {
      $X = $NUMERO[$I];
      $NUMERO[$I] = $NUMERO[$J];
      $NUMERO[$J] = $X;
    }
  }
}

$RESP = 'SIM';
while ($RESP == 'SIM') {
  printf("\nEntre o nome a ser pesquisado: ");
  $PESQ = trim(fgets(STDIN));

  $COMECO = 0;
  $FINAL = 9;
  $ACHA = false;

  while ($COMECO <= $FINAL && $ACHA == false) {
    $MEIO = floor(($COMECO + $FINAL) / 2);
    if ($PESQ == $NUMERO[$MEIO]) {
      $ACHA = true;
    } else if ($PESQ < $NUMERO[$MEIO]) {
      $FINAL = $MEIO - 1;
    } else {
      $COMECO = $MEIO + 1;
    }
  }

  if ($ACHA == true) {
    printf("\n%s foi localizado na posicao %d\n", $PESQ, $MEIO + 1);
  } else {
    printf("\n%s nao foi localizado\n", $PESQ);
  }

  do {
    printf("\nDeseja continuar? (SIM/NAO): ");
    $RESPOSTA = trim(fgets(STDIN));
    $RESP = strtoupper($RESPOSTA);

    if ($RESP != "SIM" && $RESP != "NAO") {
      printf("Informe apenas SIM ou NAO.\n");
    }
  } while ($RESP != "SIM" && $RESP != "NAO");
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
readline();

?>
