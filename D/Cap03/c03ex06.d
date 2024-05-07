// c02ex06.d

import std.stdio;
import std.algorithm;
import std.array;

void main() {
  string palavra = "COMPUTADOR";
  string copias = palavra ~ palavra ~ palavra;
  auto invertido = palavra.dup.array;

  writeln("Palavra ........: ", palavra);
  writeln();
  writeln("Lado esquerdo ..: ", palavra[0..3]);
  writeln("Centro .........: ", palavra[3..7]);
  writeln("Lado direito ...: ", palavra[7..10]);
  writeln("Reverso ........: ", reverse(invertido));
  writeln("Copias .........: ", copias);
  writeln("Nova palavra ...: ", palavra.replace("A", "O"));

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
