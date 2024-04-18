program c08ex06;

var
  NUMERO: array[1..10] of Integer;
  I, J, X, PESQ, COMECO, FINAL, MEIO: Integer;
  ACHA: Boolean;
  RESP, RESPOSTA: String;

begin
  WriteLn('PESQUISA BINARIA DE NUMEROS');
  WriteLn;

  for I := 1 to 10 do
    begin
      Write('Entre o ', I:2, 'o. numero: ');
      ReadLn(NUMERO[I]);
    end;

  for I := 1 to 9 do
    for J := I + 1 to 10 do
      if (NUMERO[I] > NUMERO[J]) then
        begin
          X := NUMERO[I];
          NUMERO[I] := NUMERO[J];
          NUMERO[J] := X;
        end;

  RESP := 'SIM';
  while (RESP = 'SIM') do
    begin
      WriteLn;
      Write('Entre o numero a ser pesquisado: ');
      ReadLn(PESQ);

      COMECO := 1;
      FINAL := 10;
      ACHA := False;

      while (COMECO <= FINAL) and (ACHA = False) do
        begin
          MEIO := (COMECO + FINAL) div 2;
          if (PESQ = NUMERO[MEIO]) then
            ACHA := True
          else
            if (PESQ < NUMERO[MEIO]) then
              FINAL := MEIO - 1
            else
              COMECO := MEIO + 1;
        end;

      if (ACHA = True) then
        begin
          WriteLn;
          WriteLn(PESQ, ' foi localizado na posicao ', MEIO);
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
