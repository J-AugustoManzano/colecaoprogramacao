program c03ex06;

var
  Palavra: String;

function Inverte(const Texto: string): string;
var
  I: Integer;
  Reverso: String;
begin
  Reverso := '';
  for I := Length(Texto) downto 1 do
    Reverso := Reverso + Texto[i];
  Inverte := Reverso;
end;

function Trocar(const Texto: string; Pos: Integer; Car: 
                Char): string;
var
  Resultado: String;
begin
  Resultado := Texto;
  if (Pos >= 1) and (Pos <= Length(Resultado)) then
    Resultado[Pos] := Car;
  Trocar := Resultado;
end;

begin
  Palavra := 'COMPUTADOR';

  WriteLn('Palavra ........: ', Palavra);
  WriteLn;
  WriteLn('Lado esquerdo ..: ', Copy(Palavra, 1, 3));
  WriteLn('Centro .........: ', Copy(Palavra, 4, 4));
  Write('Lado direito ...: ');
  WriteLn(Copy(Palavra, Length(Palavra) - 2, 3));
  WriteLn('Reverso ........: ', Inverte(Palavra));
  WriteLn('Copias .........: ', Palavra + Palavra + Palavra);
  Write('Tira pedaco ....: ');
  WriteLn(Copy(Palavra, 1, Length(Palavra) - 3));
  WriteLn('Nova palavra ...: ', Trocar(Palavra, 7, 'O')); 
  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
