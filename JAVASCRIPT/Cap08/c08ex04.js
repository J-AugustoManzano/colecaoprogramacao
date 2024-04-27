// c08ex04.js

const rls = require('readline-sync');

let Nomes = new Array(5).fill('').map(() => 
new Array(100).fill('').join(''));
let X = new Array(100).fill('').join('');
let I, J;

console.log("CLASSIFICACAO DE NOMES (DECRESCENTE)\n");

for (I = 0; I <= 4; ++I) {
  Nomes[I] = rls.question(`Entre o ${I + 1}o. nome: `);
}

for (I = 0; I <= 3; ++I) {
  for (J = I + 1; J <= 4; J++) {
    if (Nomes[I] < Nomes[J]) {
      X = Nomes[I];
      Nomes[I] = Nomes[J];
      Nomes[J] = X;
    }
  }
}

console.log("");
for (I = 0; I <= 4; ++I) {
  console.log(`${I + 1}o. nome: ${Nomes[I]}`);
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
