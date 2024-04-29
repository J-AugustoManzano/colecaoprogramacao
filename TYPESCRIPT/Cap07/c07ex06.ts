// c07ex06.ts

import * as rls from 'readline-sync';

function FATORIAL(N: number): number {
  let Fat: number = 1;
  for (let I: number = 1; I <= N; I++) {
    Fat *= I;
  }
  return Fat;
}

let Limite: number;

Limite = rls.questionInt("Qual fatorial: ");

console.log(`Fatorial = ${FATORIAL(Limite)}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
