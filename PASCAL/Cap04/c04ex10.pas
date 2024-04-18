program c04ex10;

var
  A, B, X, C: Integer;

begin
  Write('Entre valor para a variavel <A>: ');
  ReadLn(A);

  Write('Entre valor para a variavel <B>: ');
  ReadLn(B);

  Write('Entre valor para a variavel <X>: ');
  ReadLn(X);

  if (not (X > 5)) then
    C := A + B
  else
    C := A - B;

  WriteLn;
  WriteLn('Resultado = ', C);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
