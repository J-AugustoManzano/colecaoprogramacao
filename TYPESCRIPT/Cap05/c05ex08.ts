// c05ex07.ts

import * as rls from 'readline-sync';

let I: number = 1;
do {
  let N: number = rls.questionInt('Entre um valor numerico: ');

  let R: number = N * 3;

  console.log("Resultado = " + R + "\n");

  I++;
} while (I <= 5);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
