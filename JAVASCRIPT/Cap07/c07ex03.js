// c07ex03.js

const rls = require('readline-sync');

let A, B;

function TROCA() {
  let X = A;
  A = B;
  B = X;
}

A = rls.questionInt("Entre um valor para a variavel <A>: ");
B = rls.questionInt("Entre um valor para a variavel <B>: ");

TROCA();

console.log("");
console.log(`Variavel <A> com valor ${A}`);
console.log(`Variavel <B> com valor ${B}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
