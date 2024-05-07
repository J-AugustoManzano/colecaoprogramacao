// c07ex02.d

import std.stdio;
import std.string;
import std.algorithm;
import std.ascii;

bool validaNume(const string Numero) {
  if (Numero.length == 0 || Numero[0] == '-')
    return false;
  else {
    bool hasDecimalPoint = false;
    bool hasDigit = false;

    for (size_t i = 0; i < Numero.length; i++) {
      char c = Numero[i];

      if (isDigit(c)) {
        hasDigit = true;
      } else if (c == '.') {
        if (hasDecimalPoint)
          return false;
        hasDecimalPoint = true;
      } else {
        return false;
      }
    }

    return hasDigit;
  }
}

void main() {
  string Numero;

  do {
    write("Entre um valor numerico: ");
    Numero = readln().strip();

    if (Numero.length == 0) {
      writeln("Erro: Tecla <Enter> acionada acidentalmente.");
      writeln();
      continue;
    }

    if (!validaNume(Numero)) {
      writeln("Erro: Entre um numero.");
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
