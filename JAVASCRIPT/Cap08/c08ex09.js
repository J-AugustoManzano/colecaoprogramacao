// c08ex09.js

const rls = require('readline-sync');

function Fibonacci(N) {
  if (N == 0) {
    return 0;
  }
  if (N == 1) {
    return 1;
  }
  if (N >= 2) {
    return Fibonacci(N - 1) + Fibonacci(N - 2);
  }
}

let I;

for (I = 0; I <= 14; I++) {
  console.log(`${I < 10 ? ` ${I}` : I} - ${Fibonacci(I)}`);
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
