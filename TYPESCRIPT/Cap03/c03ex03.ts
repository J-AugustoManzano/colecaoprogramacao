// c03ex03.ts

import * as rls from 'readline-sync';

let HT: number, VH: number, PD: number;
let SB: number, TD: number, SL: number;

console.log('CALCULO DE SALARIO LIQUIDO');
console.log();

HT = rls.questionFloat('Entre quantidade horas trabalhadas .: ');
VH = rls.questionFloat('Entre valor salario-hora ...........: ');
PD = rls.questionFloat('Entre valor percentual de desconto .: ');

SB = HT * VH;
TD = (PD / 100) * SB;
SL = SB - TD;

console.log();
console.log('Salario Bruto ....: ', SB);
console.log('Salario Liquido ..: ', SL);
console.log();

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
