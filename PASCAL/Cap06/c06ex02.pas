program c06ex02;

var
  NOTAS: array[1..8, 1..4] of Real;
  I, J: Integer;

begin
  for I := 1 to 8 do
    begin
      WriteLn('Entre as notas do aluno ', I, ':');
      for J := 1 to 4 do
      begin
        Write('Nota ', J, ': ');
        ReadLn(NOTAS[I, J]);
      end;
      WriteLn;
  end;

  WriteLn;
  WriteLn('RELATORIO DE NOTAS');
  WriteLn;
  WriteLn('Aluno Nota1 Nota2 Nota3 Nota4');
  WriteLn('----- ----- ----- ----- -----');
  for I := 1 to 8 do
    begin
      Write(I:5, ' ');
      for J := 1 to 4 do
      begin
        Write(NOTAS[I, J]:5:1, ' ');
      end;
      WriteLn;
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
