program c08ex01;

function validaInteiro(Entrada: String): Boolean;
var
  i: Integer;
begin
  for i := 1 to Length(Entrada) do
    begin
      if (not (Entrada[i] in ['0'..'9'])) then
      begin
        validaInteiro := False;
        Exit;
      end;
    end;
  validaInteiro := True;
end;

var
  Numero: string;

begin
  repeat
    Write('Entre um valor numerico inteiro: ');
    Readln(Numero);
    Writeln;

    if (Numero = '') then
      begin
        Writeln('Erro: Tecla <Enter> acionada acidentalmente.');
        Writeln;
        continue;
      end;

    if (not validaInteiro(Numero)) then
      begin
        Writeln('Erro: Entre um numero inteiro.');
        Writeln;
        continue;
      end;

    break;
  until False;

  Writeln('Entrada valida fornecida: ', Numero);
  
  Writeln;
  Write('Tecle <Enter> para encerrar... ');
  Readln;
end.
