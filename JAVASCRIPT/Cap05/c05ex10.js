// c05ex10.js

const rls = require('readline-sync');

let RESP = 'S';
while (true) {
  let N = rls.questionInt("Entre um valor numerico: ");

  let R = N * 3;

  console.log(`Resultado = ${R}\n`);

  RESP = rls.question("Deseja continuar? (S/N): ");

  if (RESP.toUpperCase() != 'S') break;

  console.log("");
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar...");
rls.question();
