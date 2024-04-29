// c05ex10.ts

import * as rls from 'readline-sync';

let RESP: string = 'S';
while (true) {
  let N: number = rls.questionInt("Entre um valor numerico: ");

  let R: number = N * 3;

  console.log(`Resultado = ${R}\n`);

  RESP = rls.question("Deseja continuar? (S/N): ");

  if (RESP.toUpperCase() != 'S') break;

  console.log("");
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar...");
rls.question();
