program c07ex06;

function FATORIAL(N: Integer): Integer;
var
  FAT, I: Integer;
begin
  FAT := 1;
  for I := 1 to N do
    begin
      FAT := FAT * I;
    end;
  FATORIAL := FAT;
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
