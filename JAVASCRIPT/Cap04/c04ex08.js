// c04ex08.js

const rls = require('readline-sync');

console.log("Escolha o tipo de transporte:\n");
console.log("[M] - Motocicleta");
console.log("[S] - Scooter\n");

process.stdout.write("==> ");
let Transp = rls.question().toUpperCase();
console.log();

if (Transp == 'M' || Transp == 'S')
  console.log("Transporte valido.");
else
  console.log("Transporte invalido.");

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
