program c04ex03;

var
  A, B, X, R: Integer;

begin
  Write('Entre o 1o. valor numerico: ');
  ReadLn(A);

  Write('Entre o 2o. valor numerico: ');
  ReadLn(B);

  X := A + B;

  if (X >= 10) then
    R := X + 5
  else
    R := X - 7;

  WriteLn('Resultado = ', R);
  WriteLn;

  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
