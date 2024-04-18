program c05ex04;

var
  RESP: String;
  N, R: Integer;

begin
  RESP := 'S';
  while not (UpCase(RESP) <> 'S') do
    begin
      Write('Entre um valor numerico: ');
      ReadLn(N);

      R := N * 3;

      WriteLn('Resultado = ', R);
      WriteLn;

      Write('Deseja continuar? (S/N): ');
      ReadLn(RESP);
      WriteLn;
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
