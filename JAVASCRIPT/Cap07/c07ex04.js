// c07ex04.js

const rls = require('readline-sync');

function Fatorial(N) {
  let Fat = 1;
  for (let I = 1; I <= N; I++) {
    Fat *= I;
  }
  console.log(`Fatorial = ${Fat}`);
}

let Limite;

Limite = rls.questionInt("Qual fatorial: ");

Fatorial(Limite);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
