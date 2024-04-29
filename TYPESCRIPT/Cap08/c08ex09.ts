// c08ex09.ts

import * as rls from 'readline-sync';

function Fibonacci(N: number): number {
  if (N == 0) {
    return 0;
  }
  if (N == 1) {
    return 1;
  }
  if (N >= 2) {
    return Fibonacci(N - 1) + Fibonacci(N - 2);
  }
  return 0; // valor padrão para evitar erros de compilação
}

let I: number;

for (I = 0; I <= 14; I++) {
  console.log(`${I < 10 ? ` ${I}` : I} - ${Fibonacci(I)}`);
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
