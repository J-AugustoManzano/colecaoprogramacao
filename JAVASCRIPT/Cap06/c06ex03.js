// c06ex03.js

const rls = require('readline-sync');

class Aluno {
  constructor() {
    this.Nome = '';
    this.Turma = '';
    this.Sala = 0;
    this.Notas = new Array(4);
  }
}

let ALUNO = new Array(8).fill().map(() => new Aluno());

console.log("Escola de Computacao XPTO");
console.log("Cadastro Escolar de Aluno");
console.log("");

for (let I = 0; I <= 7; ++I) {
  console.log(`Aluno: ${I + 1}`);
  console.log("");

  ALUNO[I].Nome = rls.question("Nome ..............: ");
  ALUNO[I].Turma = rls.question("Turma .............: ");
  ALUNO[I].Sala = rls.questionInt("Sala ..............: ");

  console.log("");

  for (let J = 0; J <= 3; ++J)
    ALUNO[I].Notas[J] = rls.questionFloat(`Entre a ${J + 1}a. nota ..: `);

  console.log("");
}

console.log("Escola de Computacao XPTO");
console.log("Cadastro Escolar de Aluno");
console.log("");
console.log("DADOS DOS ALUNOS");
console.log("");

process.stdout.write("Aluno ");
process.stdout.write("Nome                           ");
process.stdout.write("Sala ");
process.stdout.write("Turma ");
process.stdout.write("Nota1 ");
process.stdout.write("Nota2 ");
process.stdout.write("Nota3 ");
console.log("Nota4");

process.stdout.write("----- ");
process.stdout.write("------------------------------ ");
process.stdout.write("---- ");
process.stdout.write("----- ");
process.stdout.write("----- ");
process.stdout.write("----- ");
process.stdout.write("----- ");
console.log("-----");

for (let I = 0; I <= 7; ++I) {
  process.stdout.write(`${(I + 1).toString().padStart(5, ' ')}`);
  process.stdout.write(` ${ALUNO[I].Nome.padEnd(30, ' ')}`);
  process.stdout.write(`${ALUNO[I].Sala.toString().padStart(5, ' ')}`);
  process.stdout.write(`${ALUNO[I].Turma.padStart(6, ' ')}`);
  for (let J = 0; J <= 3; ++J)
    process.stdout.write(`${ALUNO[I].Notas[J].toFixed(1).padStart(6, ' ')}`);
  console.log("");
}

console.log("");
process.stdout.write("Tecle <Enter> para encerrar... ");
rls.question();
