// c04ex06.d

import std.stdio;

void main() {
  float A, B;
  int Opcao;

  write("Entre o 1o. valor numerico: ");
  readf(" %f", &A);
  readln();

  write("Entre o 2o. valor numerico: ");
  readf(" %f", &B);
  readln();

  writeln();
  writeln("Escolha uma opcao de menu:");
  writeln();
  writeln("[1] - Adicao");
  writeln("[2] - Subtracao");
  writeln("[3] - Multiplicacao");
  writeln("[4] - Divisao");
  writeln();

  write("==> ");
  readf(" %d", &Opcao);
  readln();

  switch (Opcao) {
    case 1:
      writeln("\nCalculo de adicao");
      writefln("Resultado: %.2f", A + B);
      break;
    case 2:
      writeln("\nCalculo de subtracao");
      writefln("Resultado: %.2f", A - B);
      break;
    case 3:
      writeln("\nCalculo de multiplicacao");
      writefln("Resultado: %.2f", A * B);
      break;
    case 4:
      writeln("\nCalculo de divisao");
      if (B == 0)
        writeln("Resultado: ERRO");
      else
        writefln("Resultado: %.2f", A / B);
      break;
    default:
      writeln("\nEntrada invalida");
      writeln("Tente novamente em outro momento");
      break;
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
