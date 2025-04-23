// c04ex09.d

import std.stdio;

void main() {
  int P1, P2;

  writeln("Classificacao esportiva");
  writeln();
  writeln("Entre '1' se atleta pontuou na 1a. prova");
  writeln("Entre '1' se atleta pontuou na 2a. prova");
  writeln("Qualquer outro valor se nao pontuou nas pro-vas");
  writeln();

  write("Prova 1: ");
  readf(" %d\n", &P1);

  write("Prova 2: ");
  readf(" %d\n", &P2);

  if ((P1 == 1 && !(P2 == 1)) || (!(P1 == 1) && P2 == 1))
    writeln("\nAtleta participa da terceira prova.");
  else {
    writeln("\nAtleta nao participa da terceira prova.");
    if (P1 == 1 && P2 == 1)
      writeln("Classificado para a final.");
    else
      writeln("Desclassificado da competicao.");
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
