// c05ex09.ts

import * as rls from 'readline-sync';

let I: number = 1;
while (true) {
  let N: number = rls.questionInt('Entre um valor numerico: ');

  let R: number = N * 3;

  console.log("Resultado = " + R + "\n");

  if (I > 4) break;
  I++;
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
