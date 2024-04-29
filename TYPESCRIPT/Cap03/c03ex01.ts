// c03ex01.ts

import * as rls from 'readline-sync';

let A: number;
let B: number;
let X: number;

console.log('ADICAO DE NUMEROS');
console.log();

A = rls.questionInt('Entre o 1o. valor numerico inteiro: ');
B = rls.questionInt('Entre o 2o. valor numerico inteiro: ');

X = A + B;

console.log('Resultado da adicao = ', X);
console.log();

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
