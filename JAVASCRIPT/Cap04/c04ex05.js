// c04ex05.js

const rls = require('readline-sync');

let Mes = rls.questionInt("Entre o numero de certo mes: ");

switch (Mes) {
  case 1:
    console.log("Janeiro");
    break;
  case 2:
    console.log("Fevereiro");
    break;
  case 3:
    console.log("Marco");
    break;
  case 4:
    console.log("Abril");
    break;
  case 5:
    console.log("Maio");
    break;
  case 6:
    console.log("Junho");
    break;
  case 7:
    console.log("Julho");
    break;
  case 8:
    console.log("Agosto");
    break;
  case 9:
    console.log("Setembro");
    break;
  case 10:
    console.log("Outubro");
    break;
  case 11:
    console.log("Novembro");
    break;
  case 12:
    console.log("Dezembro");
    break;
  default:
    console.log("Mes invalido");
    break;
}

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
