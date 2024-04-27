// c05ex09.js

const rls = require('readline-sync');

let I = 1;
while (true) {
  let N = rls.questionInt('Entre um valor numerico: ');	

  let R = N * 3;

  console.log("Resultado = " + R + "\n");

  if (I > 4) break;
  I++;
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
