// c06ex02.d

import std.stdio;

void main() {
  float[4][8] NOTAS;  
  int I, J;

  for (I = 0; I <= 7; ++I) {
    write("Entre as notas do aluno ", I + 1, ":\n");
    for (J = 0; J <= 3; ++J) {
      write("Nota ", J + 1, ": ");
      readf(" %f\n", &NOTAS[I][J]);  
    }
    writeln();
  }

  writeln();
  writeln("RELATORIO DE NOTAS");
  writeln();
  write("Aluno Nota1 Nota2 Nota3 Nota4\n");
  write("----- ----- ----- ----- -----\n");
  for (I = 0; I <= 7; ++I) {
    writef("%5d ", I + 1);
    for (J = 0; J <= 3; ++J)
      writef("%5.1f ", NOTAS[I][J]);  
    writeln();
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
