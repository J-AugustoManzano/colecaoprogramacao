program c06ex01;

var
  MD: array[1..8] of Real;
  SOMA, MEDIA: Real;
  I: Integer;

begin
  SOMA := 0;
  for I := 1 to 8 do
    begin
      Write('Entre a media do aluno ', I, ': ');
      ReadLn(MD[I]);

      SOMA := SOMA + MD[I];
    end;

  MEDIA := SOMA / 8;

  WriteLn;
  WriteLn('Media geral: ', MEDIA:5:2);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
