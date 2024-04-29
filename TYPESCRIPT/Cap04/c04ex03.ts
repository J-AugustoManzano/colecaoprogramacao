// c04ex03.ts

import * as rls from 'readline-sync';

let A: number = rls.questionInt('Entre o 1o. valor numerico: ');
let B: number = rls.questionInt('Entre o 2o. valor numerico: ');

let X: number = A + B;
let R: number;

if (X >= 10)
  R = X + 5;
else
  R = X - 7;

console.log(`Resultado = ${R}`);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
