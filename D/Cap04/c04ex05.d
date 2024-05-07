// c04ex05.d

import std.stdio;

void main() {
  int Mes;

  write("Entre com um numero equivalente a um mes: ");
  readf(" %d", &Mes);
  readln();

  switch (Mes) {
    case 1:
      writeln("Janeiro");
      break;
    case 2:
      writeln("Fevereiro");
      break;
    case 3:
      writeln("Marco");
      break;
    case 4:
      writeln("Abril");
      break;
    case 5:
      writeln("Maio");
      break;
    case 6:
      writeln("Junho");
      break;
    case 7:
      writeln("Julho");
      break;
    case 8:
      writeln("Agosto");
      break;
    case 9:
      writeln("Setembro");
      break;
    case 10:
      writeln("Outubro");
      break;
    case 11:
      writeln("Novembro");
      break;
    case 12:
      writeln("Dezembro");
      break;
    default:
      writeln("Mes invalido");
      break;
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
