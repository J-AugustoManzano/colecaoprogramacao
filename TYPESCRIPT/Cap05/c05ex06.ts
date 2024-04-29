// c05ex06.ts

import * as rls from 'readline-sync';

let RESP: string = 'S';
do {
  let N: number = rls.questionInt("Entre um valor numerico: ");

  let R: number = N * 3;

  console.log(`Resultado = ${R}\n`);

  RESP = rls.question("Deseja continuar? (S/N): ");

  console.log("");
} while (!(RESP.toUpperCase() != 'S'));

console.log("");
process.stdout.write("Tecle <Enter> para encerrar...");
rls.question();
