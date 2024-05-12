<?php
// c08ex08.php

const FIM = 10;

$MATRIZ = array();
$INICIO = 0;

function vazia(): bool
{
  global $INICIO;
  if ($INICIO == 0) {
    return true;
  } else {
    return false;
  }
}

function cheia(): bool
{
  global $INICIO;
  if ($INICIO == FIM) {
    return true;
  } else {
    return false;
  }
}

function adicionar($elemento): bool
{
  global $INICIO;
  global $MATRIZ;

  if (cheia()) {
    return false;
  } else {
    $INICIO = $INICIO + 1;
    $MATRIZ[$INICIO] = $elemento;
    return true;
  }
}

function retirar(&$elemento): bool
{
  global $INICIO;
  global $MATRIZ;

  if (vazia()) {
    return false;
  } else {
    $elemento = $MATRIZ[1];
    for ($i = 1; $i < $INICIO; $i++) {
      $MATRIZ[$i] = $MATRIZ[$i + 1];
    }
    $INICIO = $INICIO - 1;
    return true;
  }
}

function entrada()
{
  global $MATRIZ;
  global $INICIO;

  printf("Entre com um elemento numerico: ");
  $x = intval(trim(fgets(STDIN)));
  printf("\n");
  if (adicionar($x)) {
    printf("Elemento %d inserido na posicao %d.\n", $x, $INICIO);
  } else {
    printf("Impossivel adicionar %d - fila lotada.\n", $x);
  }
  printf("\n");
}

function saida()
{
  global $MATRIZ;
  global $INICIO;

  $elemento = 0;
  if (retirar($elemento)) {
    printf("Elemento %d retirado do inicio da fila.\n", $elemento);
  } else {
    printf("Impossivel retirar elemento - fila vazia.\n");
  }
  printf("\n");
}

function atual()
{
  global $MATRIZ;
  global $INICIO;

  if (!vazia()) {
    printf("%d - primeiro elemento da fila.\n", $MATRIZ[1]);
  } else {
    printf("Impossivel apresentar - fila vazia.\n");
  }
  printf("\n");
}

function exibicao()
{
  global $MATRIZ;
  global $INICIO;

  if (!vazia()) {
    for ($i = 1; $i <= $INICIO; $i++) {
      printf("Posicao: %2d = %d\n", $i, $MATRIZ[$i]);
    }
  } else {
    printf("Impossivel apresentar - fila vazia.\n");
  }
  printf("\n");
}

function criar()
{
  global $MATRIZ;
  global $INICIO;

  $INICIO = 0;
  for ($i = 1; $i <= FIM; $i++) {
    $MATRIZ[$i] = 0;
  }
}

$OPCAO = 0;

criar();
$OPCAO = 0;
while ($OPCAO != 6) {
  printf("PROGRAMA: FILA\n\n");
  printf("[1] - Entrada\n");
  printf("[2] - Saida\n");
  printf("[3] - Apresentar 1o. da fila\n");
  printf("[4] - Apresentar a fila\n");
  printf("[5] - Nova fila\n");
  printf("[6] - Sair\n\n");
  printf("Escolha uma opcao: ");
  $OPCAO = intval(trim(fgets(STDIN)));
  printf("\n");

  if ($OPCAO != 6) {
    switch ($OPCAO) {
      case 1: entrada();  break;
      case 2: saida();    break;
      case 3: atual();    break;
      case 4: exibicao(); break;
      case 5: criar();    break;
      default:
        printf("Opcao invalida. Tente novamente.\n");
        printf("\n");
    }
  }
}

?>
