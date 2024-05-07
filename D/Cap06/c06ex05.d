// c06ex05.d

import std.stdio;

void main()
{
  int N;
  	
  writeln("MATRIZ DINAMICA");
  writeln();
  write("Entre a quantidade de elementos da matriz: ");
  readf(" %d\n", &N);
  writeln();

  string[] A = new string[](N);

  for (int I = 0; I < N; I++)
  {
    writef("Entre o %2do. nome: ", I + 1);
    readf(" %s\n", &A[I]);
  }

  writeln();
  writeln("Foram fornecidos os nomes:");
  writeln();

  for (int I = 0; I < N; I++)
    writefln("Nome %2d = %s", I + 1, A[I]);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
