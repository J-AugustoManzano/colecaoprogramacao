// c07ex01.d

import std.stdio;

void ROTSOMA() {
  float A1, B1, R1;
  writeln();
  writeln("Rotina de Adicao");
  writeln();
  write("Entre o 1o. valor: ");
  readf(" %f\n", &A1);
  write("Entre o 2o. valor: ");
  readf(" %f\n", &B1);
  writeln();
  R1 = A1 + B1;
  writefln("O resultado da operacao equivale a: %.2f", R1);
  writeln();
}

void ROTSUBTRACAO() {
  float A2, B2, R2;
  writeln();
  writeln("Rotina de Subtracao");
  writeln();
  write("Entre o 1o. valor: ");
  readf(" %f\n", &A2);
  write("Entre o 2o. valor: ");
  readf(" %f\n", &B2);
  writeln();
  R2 = A2 - B2;
  writefln("O resultado da operacao equivale a: %.2f", R2);
  writeln();
}

void ROTMULTIPLICACAO() {
  float A3, B3, R3;
  writeln();
  writeln("Rotina de Multiplicacao");
  writeln();
  write("Entre o 1o. valor: ");
  readf(" %f\n", &A3);
  write("Entre o 2o. valor: ");
  readf(" %f\n", &B3);
  writeln();
  R3 = A3 * B3;
  writefln("O resultado da operacao equivale a: %.2f", R3);
  writeln();
}

void ROTDIVISAO() {
  float A4, B4, R4;
  writeln();
  writeln("Rotina de Divisao");
  writeln();
  write("Entre o 1o. valor: ");
  readf(" %f\n", &A4);
  write("Entre o 2o. valor: ");
  readf( "%f\n", &B4);
  writeln();
  if (B4 == 0)
    writeln("O resultado da operacao equivale a: ERRO");
  else {
    R4 = A4 / B4;
    writefln("O resultado da operacao equivale a: %.2f", R4);
  }
  writeln();
}

void main() {
  int OPCAO = 0;
  while (OPCAO != 5) {
    writeln("CALCULADORA - V1");
    writeln();
    writeln("[1] - Adicao");
    writeln("[2] - Subtracao");
    writeln("[3] - Multiplicacao");
    writeln("[4] - Divisao");
    writeln("[5] - Fim de Programa");
    writeln();
    write("Escolha uma opcao: ");
    readf(" %d\n", &OPCAO);
    if (OPCAO != 5) {
      switch (OPCAO) {
        case 1: ROTSOMA();          break;
        case 2: ROTSUBTRACAO();     break;
        case 3: ROTMULTIPLICACAO(); break;
        case 4: ROTDIVISAO();       break;
        default:
          writeln();
          writeln("Opcao invalida - Tente novamente");
          writeln();
      }
    }
  }
}
