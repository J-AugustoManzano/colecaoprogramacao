// c07ex09.ts

import * as rls from 'readline-sync';

function FATORIAL_BASE(N: number, P: number): number {
  if (N == 0)
    return P;
  else
    return FATORIAL_BASE(N - 1, N * P);
}

function FATORIAL(N: number): number {
  return FATORIAL_BASE(N, 1);
}

let LIMITE: number;

LIMITE = rls.questionInt("Qual fatorial: ");

console.log(`Fatorial = ${FATORIAL(LIMITE)}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
