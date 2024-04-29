// c06ex02.ts

import * as rls from 'readline-sync';

let NOTAS: number[][] = new Array(8).fill().map(() => new Array(4));

for (let I: number = 0; I <= 7; ++I) {
  console.log(`Entre as notas do aluno ${I + 1}:`);
  for (let J: number = 0; J <= 3; ++J) {
    NOTAS[I][J] = rls.questionFloat(`Nota ${J + 1}: `);
  }
  console.log("");
}

console.log("");
console.log("RELATORIO DE NOTAS");
console.log("");
console.log("Aluno  Nota1  Nota2  Nota3  Nota4");
console.log("-----  -----  -----  -----  -----");
for (let I: number = 0; I <= 7; ++I) {
  process.stdout.write(`${(I + 1).toString().padStart(5, ' ')}`);
  for (let J: number = 0; J <= 3; ++J)
    process.stdout.write(`${NOTAS[I][J].toFixed(1).padStart(7, ' ')}`);
  console.log("");
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
