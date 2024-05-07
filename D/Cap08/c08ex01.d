// c07ex01.d

import std.stdio;
import std.string;
import std.algorithm;
import std.ascii;

bool validaInteiro(const string Numero) {
  if (Numero.length == 0 || Numero[0] == '-')
    return false;
  else
    return all!isDigit(Numero);
}

void main() {
  string Numero;

  do {
    write("Entre um valor numerico inteiro: ");
    Numero = readln().strip();

    if (Numero.length == 0) {
      writeln("Erro: Tecla <Enter> acionada acidentalmente.");
      writeln();
      continue;
    }

    if (!validaInteiro(Numero)) {
      writeln("Erro: Entre um numero inteiro.");
      writeln();
      continue;
    }

    break;
  } while (true);

  writeln("Entrada valida fornecida: ", Numero);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
