// c08ex10.ts

import * as rls from 'readline-sync';

function FibonacciBase(N: number, X: number, Y: number): number {
  if (N == 0) {
    return X;
  } else if (N == 1) {
    return Y;
  } else {
    return FibonacciBase(N - 1, Y, X + Y);
  }
}

function Fibonacci(N: number): number {
  return FibonacciBase(N, 0, 1);
}

let I: number;

for (I = 0; I <= 14; I++) {
  console.log(`${I < 10 ? ` ${I}` : I} - ${Fibonacci(I)}`);
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
