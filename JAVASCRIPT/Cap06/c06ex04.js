// c06ex04.js

const rls = require('readline-sync');

let A = [];
let N, I;

N = rls.questionInt("Entre a quantidade de elementos da matriz: ");
console.log("");

for (I = 0; I <= N - 1; ++I) {
  A[I] = new Array(50).fill(' ').join('');

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
