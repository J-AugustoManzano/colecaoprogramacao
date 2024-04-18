program c05ex08;

var
  RESP: String;
  N, R: Integer;

begin
  RESP := 'S';
  repeat
    Write('Entre um valor numerico: ');
    ReadLn(N);

    R := N * 3;

    WriteLn('Resultado = ', R);
    WriteLn;

    Write('Deseja continuar? (S/N): ');
    ReadLn(RESP);

    WriteLn;
  until not (UpCase(RESP) = 'S');

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
