program c04ex08;

var
  Transp: Char;

begin
  WriteLn('Escolha o tipo de transporte:');
  WriteLn;
  WriteLn('[M] - Motocicleta');
  WriteLn('[S] - Scooter');
  WriteLn;

  Write('==> ');
  ReadLn(Transp);
  WriteLn;

  if (UpCase(Transp) = 'M') or (UpCase(Transp) = 'S') then
    WriteLn('Transporte valido.')
  else
    WriteLn('Transporte invalido.');

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
