program c04ex05;

var
  Mes: Integer;

begin
  Write('Entre com um numero equivalente a um mes: ');
  ReadLn(Mes);

  case (Mes) of
     1: WriteLn('Janeiro');
     2: WriteLn('Fevereiro');
     3: WriteLn('Marco');
     4: WriteLn('Abril');
     5: WriteLn('Maio');
     6: WriteLn('Junho');
     7: WriteLn('Julho');
     8: WriteLn('Agosto');
     9: WriteLn('Setembro');
    10: WriteLn('Outubro');
    11: WriteLn('Novembro');
    12: WriteLn('Dezembro');
  else 
    WriteLn('Mes invalido');
  end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
