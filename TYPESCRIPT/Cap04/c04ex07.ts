// c04ex07.ts

import * as rls from 'readline-sync';

let Numero: number = rls.questionInt("Entre um numero inteiro: ");

if ((Numero >= 20) && (Numero <= 90))
  console.log("O numero esta na faixa de 20 a 90.");
else
  console.log("O numero esta fora da faixa de 20 a 90.");

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
