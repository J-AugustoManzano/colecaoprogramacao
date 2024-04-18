program c04ex11;

var
  N, R4, R5: Integer;

begin
  Write('Entre um numero inteiro: ');
  ReadLn(N);

  R4 := N mod 4;
  R5 := N mod 5;

  if (R4 = 0) and (R5 = 0) then
    WriteLn('Resultado = ', N)
  else
    WriteLn('Valor nao e divisivel por 4 e 5');

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
