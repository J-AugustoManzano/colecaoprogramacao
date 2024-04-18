program c04ex09;

var
  P1, P2: Integer;

begin
  WriteLn('Classificacao esportiva');
  WriteLn;
  WriteLn('Entre ''1'' se atleta pontuou na 1a. prova');
  WriteLn('Entre ''1'' se atleta pontuou na 2a. prova');
  WriteLn('Qualquer outro valor se nao pontuou nas provas');
  WriteLn;

  Write('Prova 1: ');
  ReadLn(P1);

  Write('Prova 2: ');
  ReadLn(P2);

  if (P1 = 1) xor (P2 = 1) then
    WriteLn('Atleta participa da terceira prova.')
  else
    begin
      WriteLn('Atleta nao participa da terceira prova.');
      if (P1 = 1) and (P2 = 1) then
        WriteLn('Classificado para a final.')
      else
        WriteLn('Desclassificado da competicao.');
    end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
