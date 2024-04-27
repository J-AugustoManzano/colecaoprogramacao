// c05ex11.js

const rls = require('readline-sync');

for (let I = 1; I <= 5; I++) {
  let N = rls.questionInt('Entre um valor numerico: ');	

  let R = N * 3;

  console.log("Resultado = " + R + "\n");
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
