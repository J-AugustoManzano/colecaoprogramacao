// c08ex07.js

const rls = require('readline-sync');

const LIMITE = 10;

let MATRIZ = new Array(LIMITE).fill(0);
let TOPO = 0;

function Vazia() {
  return TOPO == 0;
}

function Cheia() {
  return TOPO == LIMITE;
}

function Adicionar(ELEMENTO) {
  if (Cheia())
    return false;
  else {
    ++TOPO;
    MATRIZ[TOPO] = ELEMENTO;
    return true;
  }
}

function Retirar() {
  if (Vazia())
    return null;
  else {
    const ELEMENTO = MATRIZ[TOPO];
    MATRIZ[TOPO] = 0;
    --TOPO;
    return ELEMENTO;
  }
}

function Empilhar() {
  const X = rls.questionInt("Entre com um elemento numerico: ");
  if (Adicionar(X))
    console.log(`\nElemento ${X} inserido na posicao ${TOPO}.`);
  else
    console.log(`\nImpossivel adicionar ${X} - pilha cheia.`);
  console.log("");
}

function Desempilhar() {
  const ELEMENTO = Retirar();
  if (ELEMENTO !== null)
    console.log(`Elemento ${ELEMENTO} retirado do topo da pilha.`);
  else
    console.log("Impossivel retirar elemento - pilha vazia.");
  console.log("");
}

function Mostrar() {
  if (!Vazia())
    for (let I = TOPO; I >= 1; --I)
      console.log(`Posicao: ${I} = ${MATRIZ[I]}`);
  else
    console.log("Impossivel apresentar - pilha vazia.");
  console.log("");
}

function Criar() {
  TOPO = 0;
  for (let I = 0; I <= LIMITE - 1; ++I)
    MATRIZ[I] = 0;
}

let Opcao = 0;

Criar();
Opcao = 0;
while (Opcao !== 5) {
  console.log("PROGRAMA: PILHA\n");
  console.log("[1] - Empilhar");
  console.log("[2] - Desempilhar");
  console.log("[3] - Mostrar");
  console.log("[4] - Criar pilha");
  console.log("[5] - Sair\n");
  Opcao = rls.questionInt("Escolha uma opcao: ");
  console.log("");
  if (Opcao != 5) {  
    switch (Opcao) {
      case 1: Empilhar();    break;
      case 2: Desempilhar(); break;
      case 3: Mostrar();     break;
      case 4: Criar();       break;
      default:
        console.log("Opcao invalida. Tente novamente.\n");
    }
  }
}
