program c04ex02;

var
  A, B, X: Integer;

begin
  Write('Entre o 1o. valor numerico: ');
  ReadLn(A);

  Write('Entre o 2o. valor numerico: ');
  ReadLn(B);

  if (A > B) then
    begin
      X := A;
      A := B;
      B := X;
    end;

  WriteLn('Os valores sao: ', A, ' e ', B, '.');

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
