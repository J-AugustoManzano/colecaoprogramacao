// c03ex06.js

const rls = require('readline-sync');

let palavra = "COMPUTADOR";

let tamanho = palavra.length;

let copias = [];

let esqNP = palavra.substring(0, 6);
let dirNP = palavra.substring(7, tamanho)
let novaPalavra = esqNP + 'O' + dirNP;

let invertida = palavra.split('').reverse().join('');

let esq = palavra.substring(0,  3);
let cen = palavra.substring(3,  7);
let dir = palavra.substring(7, 10);

copias.push(palavra);
copias.push(palavra);
copias.push(palavra);

console.log(`Palavra ........: ${palavra}`);
console.log();
console.log(`Lado esquerdo ..: ${esq}`);
console.log(`Centro .........: ${cen}`);
console.log(`Lado direito ...: ${dir}`);
console.log(`Reverso ........: ${invertida}`);
console.log(`Copias .........: ${copias.join('')}`);
console.log(`Nova palavra ...: ${novaPalavra}`);
console.log();

process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
