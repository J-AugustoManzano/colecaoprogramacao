program c02ex01;

uses
  Math;

begin
  // Operadores binários

  WriteLn(5 + 3);       // Saída: 8
  WriteLn(10 - 4);      // Saída: 6
  WriteLn(2 * 6);       // Saída: 12
  WriteLn(10 / 3);      // Saída: 3.3333... (quociente real)
  WriteLn(10 div 3);    // Saída: 3 (quociente inteiro)
  WriteLn(10 mod 3);    // Saída: 1 (resto da divisão)

  // Operadores unários

  WriteLn(+5);          // Saída: 5 (mantém positivo)
  WriteLn(-8);          // Saída: -8 (inverte sinal)

  // Exponenciação

  WriteLn(Power(2, 3)); // Saída: 8 (2 elevado a 3)

end.
