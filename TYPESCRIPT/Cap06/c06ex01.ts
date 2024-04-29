// c06ex01.ts

import * as rls from 'readline-sync';

let MD: number[] = new Array(8);
let SOMA: number = 0.0;
let MEDIA: number;

for (let I: number = 0; I <= 7; ++I) {
  MD[I] = rls.questionFloat(`Entre a media do aluno ${I + 1}: `);
  SOMA += MD[I];
}

MEDIA = SOMA / 8;

console.log("");
console.log(`Media geral: ${MEDIA.toFixed(2)}`);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
