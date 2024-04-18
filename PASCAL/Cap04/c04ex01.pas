program c04ex01;

var
  A, B, X: Integer;

begin
  Write('Entre o 1o. valor numerico: ');
  ReadLn(A);

  Write('Entre o 2o. valor numerico: ');
  ReadLn(B);

  X := A + B;

  if (X > 10) then
    WriteLn('Resultado = ', X);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
