// c04ex06.ts

import * as rls from 'readline-sync';

let A: number = rls.questionFloat('Entre o 1o. valor numerico: ');
let B: number = rls.questionFloat('Entre o 2o. valor numerico: ');

console.log();
console.log('Escolha uma opcao de menu:');
console.log();
console.log('[1] - Adicao');
console.log('[2] - Subtracao');
console.log('[3] - Multiplicacao');
console.log('[4] - Divisao');
console.log();

let Opcao: number = rls.questionInt('==> ');

console.log();

switch (Opcao) {
  case 1:
    console.log('Calculo de adicao');
    console.log(`Resultado: ${(A + B).toFixed(2)}`);
    break;
  case 2:
    console.log('Calculo de subtracao');
    console.log(`Resultado: ${(A - B).toFixed(2)}`);
    break;
  case 3:
    console.log('Calculo de multiplicacao');
    console.log(`Resultado: ${(A * B).toFixed(2)}`);
    break;
  case 4:
    console.log('Calculo de divisao');
    if (B == 0)
      console.log('Resultado: ERRO');
    else
      console.log(`Resultado: ${(A / B).toFixed(2)}`);
    break;
  default:
    console.log('Entrada invalida');
    console.log('Tente novamente em outro momento');
    break;
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
