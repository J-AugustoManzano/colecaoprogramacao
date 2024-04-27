// c08ex06.js

const rls = require('readline-sync');

let NUMERO = new Array(10);
let I, J, X, PESQ, COMECO, FINAL, MEIO, DADO;
let ACHA;

let RESP = 'SIM';
let RESPOSTA;

console.log("PESQUISA BINARIA DE NUMEROS\n");

for (I = 0; I <= 9; ++I) {
  DADO = `Entre o ${(I + 1) < 10 ? ` ${I + 1}` : I + 1}o. numero: `
  NUMERO[I] = rls.questionInt(DADO);
}

for (I = 0; I <= 8; ++I) {
  for (J = I + 1; J <= 9; ++J) {
    if (NUMERO[I] > NUMERO[J]) {
      X = NUMERO[I];
      NUMERO[I] = NUMERO[J];
      NUMERO[J] = X;
    }
  }
}

while (RESP == 'SIM') {
  PESQ = rls.questionInt('\nEntre o numero a ser pesquisado: ');

  COMECO = 0;
  FINAL = 9;
  ACHA = false;

  while (COMECO <= FINAL && ACHA == false) {
    MEIO = Math.floor((COMECO + FINAL) / 2);
    if (PESQ == NUMERO[MEIO]) {
      ACHA = true;
    } else if (PESQ < NUMERO[MEIO]) {
      FINAL = MEIO - 1;
    } else {
      COMECO = MEIO + 1;
    }
  }

  if (ACHA == true) {
    console.log(`\n${PESQ} foi localizado na posicao ${MEIO + 1}\n`);
  } else {
    console.log(`\n${PESQ} nao foi localizado\n`);
  }

  do {
    RESPOSTA = rls.question('Deseja continuar? (SIM/NAO): ');
    RESPOSTA = RESPOSTA.toUpperCase();
    RESP = RESPOSTA.substring(0, 3);
    if (RESP != 'SIM' && RESP != 'NAO') {
      console.log('Informe apenas SIM ou NAO.\n');
    }
  } while (RESP != 'SIM' && RESP != 'NAO');
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
