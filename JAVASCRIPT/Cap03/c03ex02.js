// c03ex02.js

const rls = require('readline-sync');

console.log('CALCULO DE AREA DE UM CIRCULO');
console.log();

let R = rls.questionFloat('Entre valor do raio: ');

let A = Math.PI * Math.pow(R, 2);

console.log('Resultado = ', A.toFixed(2));
console.log();

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
