// c07ex01.ts

import * as rls from 'readline-sync';

function ROTSOMA(): void {
  let A1: number, B1: number, R1: number;
  console.log("");
  console.log("Rotina de Adicao");
  console.log("");
  A1 = rls.questionFloat("Entre o 1o. valor: ");
  B1 = rls.questionFloat("Entre o 2o. valor: ");
  console.log("");
  R1 = A1 + B1;
  console.log(`O resultado da operacao equivale a: ${R1.toFixed(2)}`);
  console.log("");
}

function ROTSUBTRACAO(): void {
  let A2: number, B2: number, R2: number;
  console.log("");
  console.log("Rotina de Subtracao");
  console.log("");
  A2 = rls.questionFloat("Entre o 1o. valor: ");
  B2 = rls.questionFloat("Entre o 2o. valor: ");
  console.log("");
  R2 = A2 - B2;
  console.log(`O resultado da operacao equivale a: ${R2.toFixed(2)}`);
  console.log("");
}

function ROTMULTIPLICACAO(): void {
  let A3: number, B3: number, R3: number;
  console.log("");
  console.log("Rotina de Multiplicacao");
  console.log("");
  A3 = rls.questionFloat("Entre o 1o. valor: ");
  B3 = rls.questionFloat("Entre o 2o. valor: ");
  console.log("");
  R3 = A3 * B3;
  console.log(`O resultado da operacao equivale a: ${R3.toFixed(2)}`);
  console.log("");
}

function ROTDIVISAO(): void {
  let A4: number, B4: number, R4: number;
  console.log("");
  console.log("Rotina de Divisao");
  console.log("");
  A4 = rls.questionFloat("Entre o 1o. valor: ");
  B4 = rls.questionFloat("Entre o 2o. valor: ");
  console.log("");
  if (B4 == 0) {
    console.log("O resultado da operacao equivale a: ERRO");
  } else {
    R4 = A4 / B4;
    console.log(`O resultado da operacao equivale a: ${R4.toFixed(2)}`);
  }
  console.log("");
}

let OPCAO: number = 0;

while (OPCAO != 5) {
  console.log("CALCULADORA - V1");
  console.log("");
  console.log("[1] - Adicao");
  console.log("[2] - Subtracao");
  console.log("[3] - Multiplicacao");
  console.log("[4] - Divisao");
  console.log("[5] - Fim de Programa");
  console.log("");
  OPCAO = rls.questionInt("Escolha uma opcao: ");
  if (OPCAO != 5) {
    switch (OPCAO) {
      case 1:
        ROTSOMA();
        break;
      case 2:
        ROTSUBTRACAO();
        break;
      case 3:
        ROTMULTIPLICACAO();
        break;
      case 4:
        ROTDIVISAO();
        break;
      default:
        console.log("");
        console.log("Opcao invalida - Tente novamente");
        console.log("");
    }
  }
}
