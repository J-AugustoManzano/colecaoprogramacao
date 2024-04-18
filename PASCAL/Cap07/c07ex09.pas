program c07ex09;

function FATORIAL_BASE(N, P: Integer): Integer;
begin
  if (N = 0) then
    FATORIAL_BASE := P
  else
    FATORIAL_BASE := FATORIAL_BASE(N - 1, N * P);
end;

function FATORIAL(N: Integer): Integer;
begin
  FATORIAL := FATORIAL_BASE(N, 1);
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
