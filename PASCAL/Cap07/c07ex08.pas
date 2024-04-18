program c07ex08;

function FATORIAL(N: Integer): Integer;
begin
  if (N = 0) then
    FATORIAL := 1
  else
    FATORIAL := N * FATORIAL(N - 1);
end;

var
  LIMITE: Integer;

begin
  Write('Qual fatorial: ');
  Readln(LIMITE);

  Writeln('Fatorial = ', FATORIAL(LIMITE));

  Writeln;
  Write('Tecle <Enter> para encerrar... ');
  Readln;
end.
