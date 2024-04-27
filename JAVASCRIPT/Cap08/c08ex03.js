// c08ex03.js

const rls = require('readline-sync');

let Numeros = new Array(5);
let I, J, X;

console.log("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n");

for (I = 0; I <= 4; ++I) {
  Numeros[I] = rls.questionInt(`Entre o ${I + 1}o. numero: `);
}

for (I = 0; I <= 3; ++I) {
  for (J = I + 1; J <= 4; ++J) {
    if (Numeros[I] > Numeros[J]) {
      X = Numeros[I];
      Numeros[I] = Numeros[J];
      Numeros[J] = X;
    }
  }
}

console.log("");
for (I = 0; I <= 4; ++I) {
  console.log(`${I + 1}o. numero: ${Numeros[I]}`);
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
