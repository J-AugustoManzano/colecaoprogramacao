// c07ex08.ts

import * as rls from 'readline-sync';

function FATORIAL(N: number): number {
  if (N == 0)
    return 1;
  else
    return N * FATORIAL(N - 1);
}

let Limite: number;

Limite = rls.questionInt("Qual fatorial: ");

console.log(`Fatorial = ${FATORIAL(Limite)}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
