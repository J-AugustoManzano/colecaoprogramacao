// c05ex02.js

const rls = require('readline-sync');

let RESP = 'S';
while (RESP.toUpperCase() == 'S') {
  let N = rls.questionInt("Entre um valor numerico: ");

  let R = N * 3;

  console.log(`Resultado = ${R}\n`);

  RESP = rls.question("Deseja continuar? (S/N): ");

  console.log("");
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar...");
rls.question();
