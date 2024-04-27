// c03ex04.js

const rls = require('readline-sync');

console.log('CALCULO DE SALARIO LIQUIDO');
console.log();

let HT = rls.questionFloat('Entre quantidade horas trabalhadas .: ');
let VH = rls.questionFloat('Entre valor salario-hora ...........: ');
let PD = rls.questionFloat('Entre valor percentual de desconto .: ');

let SB = HT * VH;
let TD = (PD / 100) * SB;
let SL = SB - TD;

console.log();
console.log('Salario Bruto ....: ', SB.toFixed(2).padStart(9, ' '));
console.log('Salario Liquido ..: ', SL.toFixed(2).padStart(9, ' '));
console.log();

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
