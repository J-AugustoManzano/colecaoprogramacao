// c06ex03.d

import std.stdio;

struct Aluno {
  string Nome;
  char Turma;
  int Sala;
  float[4] Notas;
}

void main() {
  Aluno[8] ALUNO;
  int I, J;

  writeln("Escola de Computacao XPTO");
  writeln("Cadastro Escolar de Aluno");
  writeln();

  for (I = 0; I < 8; ++I) {
    writeln("Aluno: ", I + 1);

    write("Nome ..............: ");
    readf(" %s\n", &ALUNO[I].Nome);

    write("Turma .............: ");
    readf(" %c", &ALUNO[I].Turma);
    readln();

    write("Sala ..............: ");
    readf(" %d\n", &ALUNO[I].Sala);
    writeln();

    for (J = 0; J < 4; ++J) {
      writef("Entre a %da. nota ..: ", J + 1);
      readf(" %f\n", &ALUNO[I].Notas[J]);
    }

    writeln();
  }

  writeln();
  writeln("Escola de Computacao XPTO");
  writeln("Cadastro Escolar de Aluno");
  writeln();
  writeln("DADOS DOS ALUNOS");

  write("Aluno ");
  write("Nome                           ");
  write("Sala ");
  write("Turma ");
  write("Nota1 ");
  write("Nota2 ");
  write("Nota3 ");
  write("Nota4\n");

  write("----- ");
  write("------------------------------ ");
  write("---- ");
  write("----- ");
  write("----- ");
  write("----- ");
  write("----- ");
  write("-----\n");

  for (I = 0; I < 8; ++I) {
    writef("%5d ", I + 1);
    writef("%-30s ", ALUNO[I].Nome);
    writef("%4d ", ALUNO[I].Sala);
    writef("%5c ", ALUNO[I].Turma);
    for (J = 0; J < 4; ++J) {
      writef("%5.1f ", ALUNO[I].Notas[J]);
    }
    writeln();
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
