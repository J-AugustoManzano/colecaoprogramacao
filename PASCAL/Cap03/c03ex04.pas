program c03ex04;

var
  HT, VH, PD, SB, TD, SL: Real;

begin
  Write('Entre quantidade de horas trabalhadas ..: ');
  ReadLn(HT);

  Write('Entre valor do salario-hora ............: ');
  ReadLn(VH);

  Write('Entre valor do percentual de desconto ..: ');
  ReadLn(PD);

  SB := HT * VH;
  TD := (PD / 100) * SB;
  SL := SB - TD;

  WriteLn;
  WriteLn('Salario Bruto ....: ', SB:8:2);
  WriteLn('Salario Liquido ..: ', SL:8:2);
  
  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
