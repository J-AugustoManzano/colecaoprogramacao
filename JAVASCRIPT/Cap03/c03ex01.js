// c03ex01.js

const rls = require('readline-sync');

console.log('ADICAO DE NUMEROS');
console.log();

let A = rls.questionInt('Entre o 1o. valor numerico inteiro: ');
let B = rls.questionInt('Entre o 2o. valor numerico inteiro: ');

let X = A + B;

console.log('Resultado da adicao = ', X);
console.log();

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
