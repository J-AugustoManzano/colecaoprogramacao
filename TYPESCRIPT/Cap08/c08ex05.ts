// c08ex05.ts

import * as rls from 'readline-sync';

let NOME: string[] = new Array(10).fill('').map(() => 
new Array(50).fill('').join(''));
let RESP: string = 'SIM';
let PESQ: string = new Array(50).fill('').join('');
let RESPOSTA: string = new Array(4).fill('').join('');
let I: number;
let ACHA: boolean;

console.log("PESQUISA SEQUENCIAL DE NOMES\n");

for (I = 0; I <= 9; ++I) {
  let DADO = `Entre o ${(I + 1) < 10 ? ` ${I + 1}` : I + 1}o. nome: `
  NOME[I] = rls.question(DADO);
}

while (RESP == 'SIM') {
  PESQ = rls.question('\nEntre o nome a ser pesquisado: ');
  I = 0;
  ACHA = false;

  while (I <= 9 && ACHA == false) {
    if (PESQ == NOME[I]) {
      ACHA = true;
    } else {
      ++I;
    }
  }

  if (ACHA == true) {
    console.log(`\n${PESQ} foi localizado na posicao ${I + 1}`);
  } else {
    console.log(`\n${PESQ} nao foi localizado`);
  }

  do {
    RESPOSTA = rls.question('\nDeseja continuar? (SIM/NAO): ');
    RESP = RESPOSTA.toUpperCase();
    if (RESP != 'SIM' && RESP != 'NAO') {
      console.log('Informe apenas SIM ou NAO.');
    }
  } while (RESP != 'SIM' && RESP != 'NAO');
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();