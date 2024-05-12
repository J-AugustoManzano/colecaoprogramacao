<?php
// c08ex07.php

const LIMITE = 10;

$MATRIZ = array();
$TOPO = 0;

function vazia(): bool
{
  global $TOPO;
  if ($TOPO == 0) {
    return true;
  } else {
    return false;
  }
}

function cheia(): bool
{
  global $TOPO;
  if ($TOPO == LIMITE) {
    return true;
  } else {
    return false;
  }
}

function adicionar($elemento): bool
{
  global $TOPO;
  global $MATRIZ;

  if (cheia()) {
    return false;
  } else {
    $TOPO = $TOPO + 1;
    $MATRIZ[$TOPO] = $elemento;
    return true;
  }
}

function retirar()
{
  global $TOPO;
  global $MATRIZ;

  if (vazia()) {
    return false;
  } else {
    $elemento = $MATRIZ[$TOPO];
    $MATRIZ[$TOPO] = 0;
    $TOPO = $TOPO - 1;
    return $elemento;
  }
}

function empilhar()
{
  global $MATRIZ;
  global $TOPO;

  printf("Entre com um elemento numerico: ");
  $x = intval(trim(fgets(STDIN)));
  if (adicionar($x)) {
    printf("\nElemento %d inserido na posicao %d.\n", $x, $TOPO);
  } else {
    printf("\nImpossivel adicionar %d - pilha cheia.\n", $x);
  }
  printf("\n");
}

function desempilhar()
{
  global $MATRIZ;
  global $TOPO;

  $elemento = retirar();
  if ($elemento !== false) {
    printf("Elemento %d retirado do topo da pilha.\n", $elemento);
  } else {
    printf("Impossivel retirar elemento - pilha vazia.\n");
  }
  printf("\n");
}

function mostrar()
{
  global $MATRIZ;
  global $TOPO;

  if (!vazia()) {
    for ($i = $TOPO; $i >= 1; $i--) {
      printf("Posicaoo: %2d = %d\n", $i, $MATRIZ[$i]);
    }
  } else {
    printf("Impossivel apresentar - pilha vazia.\n");
  }
  printf("\n");
}

function criar()
{
  global $MATRIZ;
  global $TOPO;

  $TOPO = 0;
  for ($i = 1; $i <= LIMITE; $i++) {
    $MATRIZ[$i] = 0;
  }
}

$opcao = 0;

criar();
$opcao = 0;
while ($opcao != 5) {
  printf("PROGRAMA: PILHA\n\n");
  printf("[1] - Empilhar\n");
  printf("[2] - Desempilhar\n");
  printf("[3] - Mostrar\n");
  printf("[4] - Criar pilha\n");
  printf("[5] - Sair\n\n");
  printf("Escolha uma opcao: ");
  $opcao = intval(trim(fgets(STDIN)));
  printf("\n");

  if ($opcao != 5) {
    switch ($opcao) {
      case 1: empilhar();    break;
      case 2: desempilhar(); break;
      case 3: mostrar();     break;
      case 4: criar();       break;
      default:
        printf("Opcao invalida. Tente novamente.\n");
    }
  }
}

?>
