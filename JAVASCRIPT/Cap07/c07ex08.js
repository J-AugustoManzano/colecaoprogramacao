// c07ex08.js

const rls = require('readline-sync');

function FATORIAL(N) {
  if (N == 0)
    return 1;
  else
    return N * FATORIAL(N - 1);
}

let Limite;

Limite = rls.questionInt("Qual fatorial: ");

console.log(`Fatorial = ${FATORIAL(Limite)}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
