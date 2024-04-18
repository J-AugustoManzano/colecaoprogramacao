program c03ex01;

var
  a, b, x: Integer;

begin
  Write('Entre o 1º valor numérico inteiro: ');
  ReadLn(a);

  Write('Entre o 2º valor numérico inteiro: ');
  ReadLn(b);

  x := a + b;

  WriteLn('Resultado = ', x);
  
  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
