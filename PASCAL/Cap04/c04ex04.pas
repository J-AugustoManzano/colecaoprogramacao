program c04ex04;

var
  N1, N2, N3, N4, NE: Real;
  MD1, MD2: Real;

begin
  Write('Entre a 1a. nota .......: ');
  ReadLn(N1);

  Write('Entre a 2a. nota .......: ');
  ReadLn(N2);

  Write('Entre a 3a. nota .......: ');
  ReadLn(N3);

  Write('Entre a 4a. nota .......: ');
  ReadLn(N4);
  WriteLn;

  MD1 := (N1 + N2 + N3 + N4) / 4;

  if (MD1 >= 7) then
    begin
      WriteLn('Aprovado');
      WriteLn('Media: ', MD1:0:2);
    end
  else
    begin
      Write('Entre a nota de exame ..: ');
      ReadLn(NE);
      WriteLn;
      
      MD2 := (MD1 + NE) / 2;
      
      if (MD2 >= 5) then
        WriteLn('Aprovado em exame')
      else
        WriteLn('Reprovado');
      WriteLn('Media: ', MD2:0:2);
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
