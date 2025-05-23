// c08ex10.js

const rls = require('readline-sync');

function FibonacciBase(N, X, Y) {
  if (N == 0) {
    return X;
  } 
  if (N == 1) {
    return Y;
  } 
  if (N >= 2) {
    return FibonacciBase(N - 1, Y, X + Y);
  }
}

function Fibonacci(N) {
  return FibonacciBase(N, 0, 1);
}

let I;

for (I = 0; I <= 14; I++) {
  console.log(`${I < 10 ? ` ${I}` : I} - ${Fibonacci(I)}`);
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
