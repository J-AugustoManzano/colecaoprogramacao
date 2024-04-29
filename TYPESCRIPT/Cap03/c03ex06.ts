// c03ex06.ts

import * as rls from 'readline-sync';

let palavra: string = "COMPUTADOR";

let tamanho: number = palavra.length;

let copias = [];

let esqNP: string = palavra.substring(0, 6);
let dirNP: string = palavra.substring(7, tamanho)
let novaPalavra: string = esqNP + 'O' + dirNP;

let invertida: string = palavra.split('').reverse().join('');

let esq: string = palavra.substring(0,  3);
let cen: string = palavra.substring(3,  7);
let dir: string = palavra.substring(7, 10);

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
