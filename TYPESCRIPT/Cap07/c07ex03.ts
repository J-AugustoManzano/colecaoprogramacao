// c07ex03.ts

import * as rls from 'readline-sync';

let A: number, B: number;

function TROCA(): void {
  let X: number = A;
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
