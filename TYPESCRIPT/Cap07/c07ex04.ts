// c07ex04.ts

import * as rls from 'readline-sync';

function Fatorial(N: number): void {
  let Fat: number = 1;
  for (let I: number = 1; I <= N; I++) {
    Fat *= I;
  }
  console.log(`Fatorial = ${Fat}`);
}

let Limite: number;

Limite = rls.questionInt("Qual fatorial: ");

Fatorial(Limite);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
