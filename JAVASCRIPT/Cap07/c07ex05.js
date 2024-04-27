// c07ex05.js

const rls = require('readline-sync');

function FATORIAL(N, Fat) {
  Fat[0] = 1;
  for (let I = 1; I <= N; I++) {
    Fat[0] *= I;
  }
}

let Resp, Limite;

Limite = rls.questionInt("Qual fatorial: ");
Resp = [0];

FATORIAL(Limite, Resp);

console.log(`Fatorial = ${Resp[0]}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
