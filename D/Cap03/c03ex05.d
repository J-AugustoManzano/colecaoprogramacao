// c03ex05.d

import std.stdio;

void main() {
  string nome;

  write("Entre seu nome: ");
  readf(" %s\n", nome);

  writeln("Ola, ", nome, "! Bem-vindo ao estudo de D.");

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
