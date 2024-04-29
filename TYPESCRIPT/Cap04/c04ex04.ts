// c04ex04.ts

import * as rls from 'readline-sync';

let N1: number = rls.questionFloat('Entre a 1a. nota .......: ');
let N2: number = rls.questionFloat('Entre a 2a. nota .......: ');
let N3: number = rls.questionFloat('Entre a 3a. nota .......: ');
let N4: number = rls.questionFloat('Entre a 4a. nota .......: ');
console.log("");

let MD1: number = (N1 + N2 + N3 + N4) / 4;

if (MD1 >= 7) {
  console.log("Aprovado");
  console.log(`Media: ${MD1.toFixed(2)}`);
} else {
  let NE: number = rls.questionFloat('Entre a nota de exame ..: ');
  console.log("");

  let MD2: number = (MD1 + NE) / 2;

  if (MD2 >= 5)
    console.log("Aprovado em exame");
  else
    console.log("Reprovado");
  console.log(`Media: ${MD2.toFixed(2)}`);
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
