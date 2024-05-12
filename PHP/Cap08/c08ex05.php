<?php
// c08ex05.php

$NOME = array();

printf("PESQUISA SEQUENCIAL DE NOMES\n");
printf("\n");

for ($I = 0; $I <= 9; $I++) {
  printf("%2do. nome: ", $I + 1);	
  $NOME[$I] = trim(fgets(STDOUT));
}

$RESP = "SIM";
while ($RESP == "SIM") {
  printf("\nEntre o nome a ser pesquisado: ");
  $PESQ = trim(fgets(STDOUT));
  $I = 0;
  $ACHA = false;

  while ($I <= 9 && $ACHA == false) {
    if ($PESQ == $NOME[$I]) {
      $ACHA = true;
    } else {
      ++$I;
    }
  }

  if ($ACHA == true) {
    printf("\n%s foi localizado na posicao %d\n", $PESQ, $I + 1);
  } else {
    printf("\n%s nao foi localizado\n", $PESQ);
  }

  do {
    printf("\nDeseja continuar? (SIM/NAO): ");
    $RESPOSTA = trim(fgets(STDOUT));
    $RESP = strtoupper($RESPOSTA);    }
  } while ($RESP != "SIM" && $RESP != "NAO");
}

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDOUT));

?>
