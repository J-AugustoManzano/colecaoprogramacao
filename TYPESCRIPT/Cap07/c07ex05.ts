// c07ex05.ts

import * as rls from 'readline-sync';

function FATORIAL(N: number, Fat: number[]): void {
  Fat[0] = 1;
  for (let I: number = 1; I <= N; I++) {
    Fat[0] *= I;
  }
}

let Resp: number[], Limite: number;

Limite = rls.questionInt("Qual fatorial: ");
Resp = [0];

FATORIAL(Limite, Resp);

console.log(`Fatorial = ${Resp[0]}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
