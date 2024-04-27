// c04ex03.js

const rls = require('readline-sync');

let A = rls.questionInt('Entre o 1o. valor numerico: ');
let B = rls.questionInt('Entre o 2o. valor numerico: ');

let X = A + B;
let R;

if (X >= 10)
  R = X + 5;
else 
  R = X - 7;

console.log(`Resultado = ${R}`);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
