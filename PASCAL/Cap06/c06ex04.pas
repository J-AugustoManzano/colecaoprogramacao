program c06ex04;

var
  A: array of string;
  N, I: Integer;

begin
  Write('Entre a quantidade de elementos da matriz: ');
  ReadLn(N);
  WriteLn;

  SetLength(A, N);

  for I := 1 to N do
    begin
      Write('Entre o ', I:3, 'o. nome: ');
      ReadLn(A[I]);
    end;

  WriteLn;
  WriteLn('Foram fornecidos os nomes:');
  WriteLn;

  for I := 1 to N do
    begin
      WriteLn('Nome ', I:3, ' = ', A[I]);
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
