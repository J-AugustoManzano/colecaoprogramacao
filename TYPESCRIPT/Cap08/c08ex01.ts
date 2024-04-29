// c08ex01.ts

import * as rls from 'readline-sync';

function validaInteiro(Numero: string): boolean {
  const REGEX = /^[0-9]+$/;
  return REGEX.test(Numero);
}

let Numero: string;

do {
  Numero = rls.question("Entre um valor numerico inteiro: ");

  if (Numero.length == 0) {
    console.log("\nErro: Tecla <Enter> acionada acidentalmente.");
    console.log("");
    continue;
  }

  if (!(validaInteiro(Numero))) {
    console.log("\nErro: Entre um numero inteiro.");
    console.log("");
    continue;
  }

  break;
} while (true);

console.log(`\nEntrada valida fornecida: ${Numero}`);

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
