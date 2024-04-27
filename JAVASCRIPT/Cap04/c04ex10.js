// c04ex10.js

const rls = require('readline-sync');

process.stdout.write("Entre valor para a variavel <A>: ");
let A = parseInt(rls.question());

process.stdout.write("Entre valor para a variavel <B>: ");
let B = parseInt(rls.question());

process.stdout.write("Entre valor para a variavel <X>: ");
let X = parseInt(rls.question());

let C;
if (!(X > 5))
  C = A + B;
else
  C = A - B;

console.log("");
console.log("Resultado = " + C);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
