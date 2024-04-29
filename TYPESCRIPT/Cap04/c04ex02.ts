// c04ex02.ts

import * as rls from 'readline-sync';

let A: number = rls.questionInt('Entre o 1o. valor numerico: ');
let B: number = rls.questionInt('Entre o 2o. valor numerico: ');

if (A > B) {
  let X: number = A;
  A = B;
  B = X;
}

console.log(`Os valores sao: ${A} e ${B}.`);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
