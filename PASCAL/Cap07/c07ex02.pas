program c07ex02;

var
  A, B, X: Integer;

begin
  Write('Entre um valor para a variavel <A>: ');
  ReadLn(A);
    
  Write('Entre um valor para a variavel <B>: ');
  ReadLn(B);

  X := A;
  A := B;
  B := X;

  WriteLn;

  WriteLn('Variavel <A> com valor ', A);
  WriteLn('Variavel <B> com valor ', B);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
