program c05ex11;

var
  I, N, R: Integer;

begin
  for I := 1 to 5 do
    begin
      Write('Entre um valor numerico: ');
      ReadLn(N);

      R := N * 3;

      WriteLn('Resultado = ', R);
      WriteLn;
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
