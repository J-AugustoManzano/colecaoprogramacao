// c04ex07.js

const rls = require('readline-sync');

let Numero = rls.questionInt("Entre um numero inteiro: ");

if ((Numero >= 20) && (Numero <= 90))
  console.log("O numero esta na faixa de 20 a 90.");
else
  console.log("O numero esta fora da faixa de 20 a 90.");

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
