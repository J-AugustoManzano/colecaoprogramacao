// c03ex05.js

const rls = require('readline-sync');

let nome = rls.question("Entre seu nome: ");

console.log(`Ola, ${nome}! Bem-vindo ao estudo de JavaScript.`);

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
