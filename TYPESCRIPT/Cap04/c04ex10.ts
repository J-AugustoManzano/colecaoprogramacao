// c04ex10.ts

import * as rls from 'readline-sync';

process.stdout.write("Entre valor para a variavel <A>: ");
const A: number = parseInt(rls.question());

process.stdout.write("Entre valor para a variavel <B>: ");
const B: number = parseInt(rls.question());

process.stdout.write("Entre valor para a variavel <X>: ");
const X: number = parseInt(rls.question());

let C: number;
if (!(X > 5))
  C = A + B;
else
  C = A - B;

console.log("");
console.log("Resultado = " + C);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
