program c08ex04;

var
  Nomes: array[1..5] of String;
  X: String;
  I, J: Integer;

begin
  WriteLn('CLASSIFICACAO DE NOMES (DECRESCENTE)');
  WriteLn;

  for I := 1 to 5 do
    begin
      Write('Entre o ', I, 'o. nome: ');
      ReadLn(Nomes[I]);
    end;

  for I := 1 to 4 do
    for J := I + 1 to 5 do
      if (Nomes[I] < Nomes[J]) then
        begin
          X := Nomes[I];
          Nomes[I] := Nomes[J];
          Nomes[J] := X;
        end;

  WriteLn;
  for I := 1 to 5 do
    WriteLn(I, 'o. nome: ', Nomes[I]);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
