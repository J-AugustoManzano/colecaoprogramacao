program c07ex05;

procedure FATORIAL(N: Integer; var FAT: Integer);
var
  I: Integer;
begin
  FAT := 1;
  for I := 1 to N do
  begin
    FAT := FAT * I;
  end;
end;

var
  RESP, LIMITE: Integer;

begin
  RESP := 1;
  
  Write('Qual fatorial: ');
  Readln(LIMITE);
  
  FATORIAL(LIMITE, RESP);
  
  Writeln('Fatorial = ', RESP);
  
  Writeln;
  Write('Tecle <Enter> para encerrar... ');
  Readln;
end.
