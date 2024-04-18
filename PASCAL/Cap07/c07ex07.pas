program c07ex07;

function IGUAL(A, B: Integer): Boolean;
begin
  IGUAL := A = B;
end;

var
  X, Y: Integer;

begin
  Write('Informe o 1o. valor: ');
  Readln(X);

  Write('Informe o 2o. valor: ');
  Readln(Y);

  if (IGUAL(X, Y)) then
    Writeln('Valores sao iguais')
  else
    Writeln('Valores sao diferentes');

  Writeln;
  Write('Tecle <Enter> para encerrar... ');
  Readln;
end.
