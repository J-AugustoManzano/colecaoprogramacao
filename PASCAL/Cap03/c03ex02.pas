program c03ex02;

uses
  Math;

var
  R, A: Real;

begin
  Write('Entre valor do raio: ');
  ReadLn(R);

  A := PI * Power(R, 2);

  WriteLn('Resultado = ', A:0:2);
  
  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
