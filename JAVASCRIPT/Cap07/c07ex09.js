// c07ex09.js

const rls = require('readline-sync');

function FATORIAL_BASE(N, P) {
  if (N == 0)
    return P;
  else
    return FATORIAL_BASE(N - 1, N * P);
}

function FATORIAL(N) {
  return FATORIAL_BASE(N, 1);
}

let LIMITE;

LIMITE = rls.questionInt("Qual fatorial: ");

console.log(`Fatorial = ${FATORIAL(LIMITE)}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
