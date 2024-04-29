// c04ex09.ts

import * as rls from 'readline-sync';

console.log("Classificacao esportiva\n");
console.log("Entre '1' se atleta pontuou na 1a. prova");
console.log("Entre '1' se atleta pontuou na 2a. prova");
console.log("Qualquer outro valor se nao pontuou nas provas\n");

let P1: number = parseInt(rls.question("Prova 1: "));
let P2: number = parseInt(rls.question("Prova 2: "));

if (P1 == 1 ^ P2 == 1)
  console.log("Atleta participa da terceira prova.");
else {
  console.log("Atleta nao participa da terceira prova.");
  if (P1 == 1 && P2 == 1)
    console.log("Classificado para a final.");
  else
    console.log("Desclassificado da competicao.");
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
