// c08ex08.js

const rls = require('readline-sync');

const FIM = 10;

let MATRIZ = new Array(FIM).fill(0);
let INICIO = 0;

function Vazia() {
  return INICIO == 0;
}

function Cheia() {
  return INICIO == FIM;
}

function Adicionar(ELEMENTO) {
  if (Cheia())
    return false;
  else {
    MATRIZ[INICIO] = ELEMENTO;
    ++INICIO;
    return true;
  }
}

function Retirar() {
  let I;
  if (Vazia())
    return null;
  else {
    const ELEMENTO = MATRIZ[0];
    for (I = 0; I <= INICIO - 1; I++)
      MATRIZ[I] = MATRIZ[I + 1];
    --INICIO;
    return ELEMENTO;
  }
}

function Entrada() {
  const X = rls.questionInt("Entre com um elemento numerico: ");
  if (Adicionar(X))
    console.log(`\nElemento ${X} inserido na posicao ${INICIO}.`);
  else
    console.log(`\nImpossivel adicionar ${X} - fila lotada.`);
  console.log("");
}

function Saida() {
  const ELEMENTO = Retirar();
  if (ELEMENTO != null)
    console.log(`Elemento ${ELEMENTO} retirado do inicio da fila.`);
  else
    console.log("Impossivel retirar elemento - fila vazia.");
  console.log("");
}

function Atual() {
  if (!(Vazia()))
    console.log(`${MATRIZ[0]} - primeiro elemento da fila.`);
  else
    console.log("Impossivel apresentar - fila vazia.");
    console.log("");
}

function Exibicao() {
  let I;
  if (!Vazia())
    for (I = 0; I <= INICIO - 1; ++I)
      console.log(`Posicao: ${I + 1} = ${MATRIZ[I]}`);
  else
    console.log("Impossivel apresentar - fila vazia.");
  console.log("");
}

function Criar() {
  let I;
  INICIO = 0;
  for (I = 0; I <= FIM - 1; ++I)
    MATRIZ[I] = 0;
}

let OPCAO = 0;

Criar();
OPCAO = 0;
while (OPCAO != 6) {
  console.log("PROGRAMA: FILA\n");
  console.log("[1] - Entrada");
  console.log("[2] - Saida");
  console.log("[3] - Apresentar 1o. da fila");
  console.log("[4] - Apresentar a fila");
  console.log("[5] - Nova fila");
  console.log("[6] - Sair\n");
  OPCAO = rls.questionInt("Escolha uma opcao: ");
  console.log("");
  if (OPCAO != 6) {
    switch (OPCAO) {
      case 1: Entrada();  break;
      case 2: Saida();    break;
      case 3: Atual();    break;
      case 4: Exibicao(); break;
      case 5: Criar();    break;
      default:
        console.log("Opcao invalida. Tente novamente.\n");
    }
  }
}
