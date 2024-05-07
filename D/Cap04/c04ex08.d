// c04ex08.d

import std.stdio;
import std.string;

void main() {
  char Transp;

  writeln("Escolha o tipo de transporte:");
  writeln();
  writeln("[M] - Motocicleta");
  writeln("[S] - Scooter");
  writeln();

  write("==> ");
  readf(" %c\n", &Transp);

  if (toUpper(Transp) == 'M' || toUpper(Transp) == 'S')
    writeln("\nTransporte valido.");
  else
    writeln("\nTransporte invalido.");

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
