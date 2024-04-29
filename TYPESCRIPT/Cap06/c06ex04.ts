// c06ex04.ts

import * as rls from 'readline-sync';

let A: string[];
let N: number, I: number;

N = rls.questionInt("Entre a quantidade de elementos da matriz: ");
console.log("");

A = new Array(N).fill('');

for (I = 0; I <= N - 1; ++I) {
  A[I] = rls.question(`Entre o ${I + 1}o. nome: `);
}

console.log("");
console.log("Foram fornecidos os nomes:");
console.log("");

for (I = 0; I <= N - 1; ++I) {
  console.log(`Nome ${I + 1} = ${A[I]}`);
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
