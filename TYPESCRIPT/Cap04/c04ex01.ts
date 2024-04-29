// c04ex01.ts

import * as rls from 'readline-sync';

let A: number = rls.questionInt('Entre o 1o. valor numerico: ');
let B: number = rls.questionInt('Entre o 2o. valor numerico: ');

let X: number = A + B;

if (X > 10)
  console.log(`Resultado = ${X}`);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
