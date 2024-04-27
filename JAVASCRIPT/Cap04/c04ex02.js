// c04ex02.js

const rls = require('readline-sync');

let A = rls.questionInt('Entre o 1o. valor numerico: ');
let B = rls.questionInt('Entre o 2o. valor numerico: ');

if (A > B) {
  let X = A;
  A = B;
  B = X;
}

console.log(`Os valores sao: ${A} e ${B}.`);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
