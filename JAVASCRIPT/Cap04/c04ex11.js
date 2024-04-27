// c04ex11.js

const rls = require('readline-sync');

process.stdout.write("Entre um numero inteiro: ");
let N = parseInt(rls.question());

let R4 = N % 4;
let R5 = N % 5;

if (R4 == 0 && R5 == 0)
  console.log("Resultado = " + N);
else
  console.log("Valor nao e divisivel por 4 e 5");

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
