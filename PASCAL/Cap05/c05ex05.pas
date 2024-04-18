program c05ex05;

var
  I, N, R: Integer;

begin
  I := 1;
  repeat
    Write('Entre um valor numerico: ');
    ReadLn(N);

    R := N * 3;

    WriteLn('Resultado = ', R);
    WriteLn;

    I := I + 1;
  until (I > 5);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
