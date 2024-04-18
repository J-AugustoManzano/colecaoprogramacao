program c07ex03;

var
  A, B: Integer;

procedure TROCA;
var
  X: Integer;
begin
  X := A;
  A := B;
  B := X;
end;

begin
  Write('Entre um valor para a variavel <A>: ');
  ReadLn(A);
    
  Write('Entre um valor para a variavel <B>: ');
  ReadLn(B);

  TROCA;

  WriteLn;

  WriteLn('Variavel <A> com valor ', A);
  WriteLn('Variavel <B> com valor ', B);

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
