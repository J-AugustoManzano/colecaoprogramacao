// c07ex05.d

import std.stdio;

void FATORIAL(int N, ref int Fat) {
  Fat = 1;
  for (int I = 1; I <= N; I++)
    Fat *= I;
}

int Resp, Limite;

void main() {
  Resp = 1;

  write("Qual fatorial: ");
  readf(" %d\n", &Limite);

  FATORIAL(Limite, Resp);

  writefln("Fatorial = %d", Resp);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
