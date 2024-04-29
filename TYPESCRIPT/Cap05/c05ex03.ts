// c05ex03.ts

import * as rls from 'readline-sync';

let I: number = 1;
while (!(I > 5)) {
  let N: number = rls.questionInt('Entre um valor numerico: ');

  let R: number = N * 3;

  console.log("Resultado = " + R + "\n");

  I++;
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
