// c05ex03.js

const rls = require('readline-sync');

let I = 1;
while (!(I > 5)) {
  let N = rls.questionInt('Entre um valor numerico: ');	

  let R = N * 3;

  console.log("Resultado = " + R + "\n");

  I++;
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
