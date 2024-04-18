program c05ex01;

var
  I, N, R: Integer;

begin
  I := 1;
  while (I <= 5) do
    begin
      Write('Entre um valor numerico: ');
      ReadLn(N);

      R := N * 3;

      WriteLn('Resultado = ', R);
      WriteLn;

      I := I + 1;
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
