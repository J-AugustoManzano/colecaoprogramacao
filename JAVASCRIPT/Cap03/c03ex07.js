// c03ex07.js
  
const rls = require('readline-sync');
  
let frase = "Aprendendo JavaScript com o Professor Manzano";
let palavras = new Array(4).fill(new Array(10).fill(''));
  
console.log("Frase ......: " + frase);
console.log("              ------------------------------------");
console.log("              000000000111111111122222222223333333");
console.log("              012345678901234567890123456789012345");
console.log("");
  
console.log("Tamanho ....: " + frase.length + " caracteres\n");
  
let palavrasEncontradas = frase.split(" ", 4);
palavras[0] = palavrasEncontradas[0].padEnd(20, ' ');
palavras[1] = palavrasEncontradas[1].padEnd(20, ' ');
palavras[2] = palavrasEncontradas[2].padEnd(20, ' ');
palavras[3] = palavrasEncontradas[3].padEnd(20, ' ');
  
  
console.log("Palavra 1 .............: " + palavras[0]);
console.log("Palavra 2 .............: " + palavras[1]);
console.log("Palavra 3 .............: " + palavras[2]);
console.log("Palavra 4 .............: " + palavras[3]);
console.log("");
  
console.log("Letra 1 da Palavra 1 ..: " + palavras[0][0]);
console.log("Letra 2 da Palavra 1 ..: " + palavras[0][1]);
console.log("Letra 3 da Palavra 1 ..: " + palavras[0][2]);
console.log("Letra 4 da Palavra 1 ..: " + palavras[0][3]);
console.log("");
  
process.stdout.write("A palavra 'JavaScript' na posicao: ");
console.log(frase.indexOf("JavaScript") + 1);
console.log("");
  
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
  
