program c08ex02;

function validaNumero(Entrada: String): Boolean;
var
  i, contaPonto: Integer;
begin
  contaPonto := 0;
  for i := 1 to Length(Entrada) do
    begin
      if (Entrada[i] = '.') then
        begin
          Inc(contaPonto);
          if (contaPonto > 1) then
          begin
            validaNumero := False;
            Exit;
          end;
        end
      else 
        if (not (Entrada[i] in ['0'..'9'])) then
          begin
            validaNumero := False;
            Exit;
          end;
    end;
  validaNumero := True;
end;

var
  Numero: string;

begin
  repeat
    Write('Entre um valor numerico: ');
    Readln(Numero);
    Writeln;

    if (Numero = '') then
      begin
        Writeln('Erro: Tecla <Enter> acionada acidentalmente.');
        Writeln;
        continue;
      end;

    if (not validaNumero(Numero)) then
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

