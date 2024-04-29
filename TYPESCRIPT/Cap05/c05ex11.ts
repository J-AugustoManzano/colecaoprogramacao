// c05ex11.ts

import * as rls from 'readline-sync';

for (let I: number = 1; I <= 5; I++) {
  let N: number = rls.questionInt('Entre um valor numerico: ');

  let R: number = N * 3;

  console.log("Resultado = " + R + "\n");
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
