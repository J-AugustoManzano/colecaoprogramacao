// c03ex05.ts

import * as rls from 'readline-sync';

let nome: string = rls.question("Entre seu nome: ");

console.log(`Ola, ${nome}! Bem-vindo ao estudo de TypeScript.`);

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
