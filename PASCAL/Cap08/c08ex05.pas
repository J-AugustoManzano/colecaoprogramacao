program c08ex05;

var
  NOME: array[1..10] of String;
  RESP, PESQ, RESPOSTA: String;
  I: Integer;
  ACHA: Boolean;

begin
  WriteLn('PESQUISA SEQUENCIAL DE NOMES');
  WriteLn;

  for I := 1 to 10 do
    begin
      Write('Entre o ', I:2, 'o. nome: ');
      ReadLn(NOME[I]);
    end;

  RESP := 'SIM';
  while (RESP = 'SIM') do
    begin
      WriteLn;
      Write('Entre o nome a ser pesquisado: ');
      ReadLn(PESQ);
      I := 1;
      ACHA := False;

      while (I <= 10) and (ACHA = False) do
        begin
          if (PESQ = NOME[I]) then
            ACHA := True
          else
            I := I + 1;
        end;

      if (ACHA = True) then
        begin
          WriteLn;
          WriteLn(PESQ, ' foi localizado na posicao ', I);
        end
      else
        begin
          WriteLn;
          WriteLn(PESQ, ' nao foi localizado');
        end;

      WriteLn;
      repeat
        Write('Deseja continuar? (SIM/NAO): ');
        ReadLn(RESPOSTA);
        RESP := UpCase(RESPOSTA);
        if (RESP <> 'SIM') and (RESP <> 'NAO') then
          begin
            WriteLn('Informe apenas SIM ou NAO.');
            WriteLn;
          end;
      until (RESP = 'SIM') or (RESP = 'NAO');
  end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
