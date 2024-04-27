// c07ex06.js

const rls = require('readline-sync');

function FATORIAL(N) {
  let Fat = 1;
  for (let I = 1; I <= N; I++) {
    Fat *= I;
  }
  return Fat;
}

let Limite;

Limite = rls.questionInt("Qual fatorial: ");

console.log(`Fatorial = ${FATORIAL(Limite)}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
