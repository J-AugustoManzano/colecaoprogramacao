program c03ex07;

type
  Cadeia = Array of String;

procedure Split(const Entra: string; Limite: char; var Saida: Cadeia);
var
  I, Inicio, Contar: Integer;
begin
  Inicio := 1;
  Contar := 0;
  SetLength(Saida, 0);
  for I := 1 to Length(Entra) do
  begin
    if (Entra[I] = Limite) then
    begin
      SetLength(Saida, Contar + 1);
      Saida[Contar] := Copy(Entra, Inicio, I - Inicio);
      Inc(Contar);
      Inicio := I + 1;
    end;
  end;
  SetLength(Saida, Contar + 1);
  Saida[Contar] := Copy(Entra, Inicio, Length(Entra) - Inicio + 1);
  Contar := Contar + 1;
  SetLength(Saida, Contar);
end;

var
  Frase: string;
  Palavras: Cadeia;

begin
  Frase := 'Aprendendo Pascal com o Professor Manzano';

  WriteLn('Frase ......: ', Frase);
  WriteLn('              -----------------------------------------');
  WriteLn('              00000000011111111112222222222333333333334');
  WriteLn('              01234567890123456789012345678901234567890');
  WriteLn;

  WriteLn('Tamanho ....: ', Length(Frase), ' caracteres');
  WriteLn;

  Split(Frase, ' ', Palavras);

  WriteLn('Palavra 1 .............: ', Palavras[0]);
  WriteLn('Palavra 2 .............: ', Palavras[1]);
  WriteLn('Palavra 3 .............: ', Palavras[2]);
  WriteLn('Palavra 4 .............: ', Palavras[3]);
  WriteLn;

  WriteLn('Letra 1 da Palavra 1 ..: ', Palavras[0][1]);
  WriteLn('Letra 2 da Palavra 1 ..: ', Palavras[0][2]);
  WriteLn('Letra 3 da Palavra 1 ..: ', Palavras[0][3]);
  WriteLn('Letra 4 da Palavra 1 ..: ', Palavras[0][4]);
  WriteLn;

  WriteLn('A palavra ''Pascal'' na posicao: ', Pos('Pascal', Frase));

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
