// c03ex02.ts

import * as rls from 'readline-sync';

let R: number, A: number;

console.log('CALCULO DE AREA DE UM CIRCULO');
console.log();

R = rls.questionFloat('Entre valor do raio: ');
A = Math.PI * R ** 2;

console.log('Resultado = ', A.toFixed(2));
console.log();

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
