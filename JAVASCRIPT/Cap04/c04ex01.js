// c04ex01.js

const rls = require('readline-sync');

let A = rls.questionInt('Entre o 1o. valor numerico: ');
let B = rls.questionInt('Entre o 2o. valor numerico: ');

let X = A + B;

if (X > 10)
  console.log(`Resultado = ${X}`);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
