// c02ex01.d

import std.stdio;
import std.math;

void main()
{
  // Operadores binários

  writeln(5 + 3);     // Saída: 8
  writeln(10 - 4);    // Saída: 6
  writeln(2 * 6);     // Saída: 12
  writeln(10.0 / 3);  // Saída: 3.3333... (quociente real)
  writeln(10 / 3);    // Saída: 3 (quociente inteiro)
  writeln(10 % 3);    // Saída: 1 (resto da divisão)

  // Operadores unários

  writeln(+5);        // Saída: 5 (mantém positivo)
  writeln(-8);        // Saída: -8 (inverte sinal)

  // Exponenciação

  writeln(pow(2, 3)); // Saída: 8 (2 elevado a 3)
}
