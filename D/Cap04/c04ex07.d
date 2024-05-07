// c04ex07.d

import std.stdio;

void main() {
  int Numero;

  write("Entre um numero inteiro: ");
  readf(" %d\n", &Numero);

  if ((Numero >= 20) && (Numero <= 90))
    writeln("O numero esta na faixa de 20 a 90.");
  else
    writeln("O numero esta fora da faixa de 20 a 90.");

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
