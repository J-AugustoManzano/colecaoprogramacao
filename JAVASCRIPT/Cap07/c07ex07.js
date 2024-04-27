// c07ex07.js

const rls = require('readline-sync');

function IGUAL(A, B) {
  return A == B;
}

let X, Y;

X = rls.questionInt("Informe o 1o. valor: ");
Y = rls.questionInt("Informe o 2o. valor: ");

if (IGUAL(X, Y)) {
  console.log("Valores sao iguais");
} else {
  console.log("Valores sao diferentes");
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
