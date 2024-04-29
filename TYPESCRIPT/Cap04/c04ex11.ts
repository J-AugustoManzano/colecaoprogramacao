// c04ex11.ts

import * as rls from 'readline-sync';

process.stdout.write("Entre um numero inteiro: ");
let N: number = parseInt(rls.question());

let R4: number = N % 4;
let R5: number = N % 5;

if (R4 == 0 && R5 == 0)
  console.log("Resultado = " + N);
else
  console.log("Valor nao e divisivel por 4 e 5");

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
