program c08ex03;

var
  Numeros: array[1..5] of Integer;
  I, J, X: Integer;

begin
  WriteLn('CLASSIFICACAO DE NUMEROS (CRESCENTE)');
  WriteLn;

  for I := 1 to 5 do
    begin
      Write('Entre o ', I, 'o. numero: ');
      ReadLn(Numeros[I]);
    end;

  for I := 1 to 4 do
    for J := I + 1 to 5 do
      if (Numeros[I] > Numeros[J]) then
        begin
          X := Numeros[I];
          Numeros[I] := Numeros[J];
          Numeros[J] := X;
        end;

  WriteLn;
  for I := 1 to 5 do
    WriteLn(I, 'o. numero: ', Numeros[I]);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
