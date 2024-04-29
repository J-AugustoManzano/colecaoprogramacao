// c07ex07.ts

import * as rls from 'readline-sync';

function IGUAL(A: number, B: number): boolean {
  return A == B;
}

let X: number, Y: number;

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
