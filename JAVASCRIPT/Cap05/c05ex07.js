// c05ex07.js

const rls = require('readline-sync');

let I = 1;
do {
  let N = rls.questionInt('Entre um valor numerico: ');	

  let R = N * 3;

  console.log("Resultado = " + R + "\n");

  I++;
} while (I <= 5);

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
