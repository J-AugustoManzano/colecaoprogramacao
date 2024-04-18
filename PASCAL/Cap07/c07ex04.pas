program c07ex04;

var
  N, I, Fat: Integer;

procedure Fatorial(N: Integer);
begin
  Fat := 1;
  for I := 1 to N do
    begin
      Fat := Fat * I;
    end;
  Writeln('Fatorial = ', Fat);
end;

var
  Limite: integer;

begin
  Write('Qual fatorial: ');
  Readln(Limite);
  
  Fatorial(Limite);
  
  Writeln;
  Write('Tecle <Enter> para encerrar... ');
  Readln;
end.
