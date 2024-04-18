program c04ex07;

var
  Numero: Integer;

begin
  Write('Entre um numero inteiro: ');
  ReadLn(Numero);

  if (Numero >= 20) and (Numero <= 90) then
    WriteLn('O numero esta na faixa de 20 a 90.')
  else
    WriteLn('O numero esta fora da faixa de 20 a 90.');

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
