program c07ex01;

procedure ROTSOMA;
var
  A1, B1, R1: Real;
begin
  WriteLn;
  WriteLn('Rotina de Adicao');
  WriteLn;
  Write('Entre o 1o. valor: ');
  ReadLn(A1);
  Write('Entre o 2o. valor: ');
  ReadLn(B1);
  WriteLn;
  R1 := A1 + B1;
  WriteLn('O resultado da operacao equivale a: ', R1:0:2);
  WriteLn;
end;

procedure ROTSUBTRACAO;
var
  A2, B2, R2: Real;
begin
  WriteLn;
  WriteLn('Rotina de Subtracao');
  WriteLn;
  Write('Entre o 1o. valor: ');
  ReadLn(A2);
  Write('Entre o 2o. valor: ');
  ReadLn(B2);
  WriteLn;
  R2 := A2 - B2;
  WriteLn('O resultado da operacao equivale a: ', R2:0:2);
  WriteLn;
end;

procedure ROTMULTIPLICACAO;
var
  A3, B3, R3: Real;
begin
  WriteLn;
  WriteLn('Rotina de Multiplicacao');
  WriteLn;
  Write('Entre o 1o. valor: ');
  ReadLn(A3);
  Write('Entre o 2o. valor: ');
  ReadLn(B3);
  WriteLn;
  R3 := A3 * B3;
  WriteLn('O resultado da operacao equivale a: ', R3:0:2);
  WriteLn;
end;

procedure ROTDIVISAO;
var
  A4, B4, R4: Real;
begin
  WriteLn;
  WriteLn('Rotina de Divisao');
  WriteLn;
  Write('Entre o 1o. valor: ');
  ReadLn(A4);
  Write('Entre o 2o. valor: ');
  ReadLn(B4);
  WriteLn;
  if (B4 = 0) then
    WriteLn('O resultado da operacao equivale a: ERRO')
  else
    begin
      R4 := A4 / B4;
      WriteLn('O resultado da operacao equivale a: ', R4:0:2);
    end;
  WriteLn;
end;

var
  OPCAO: Integer;
  
begin
  OPCAO := 0;
  while (OPCAO <> 5) do
    begin
      WriteLn('CALCULADORA - V1');
      WriteLn;
      WriteLn('[1] - Adicao');
      WriteLn('[2] - Subtracao');
      WriteLn('[3] - Multiplicacao');
      WriteLn('[4] - Divisao');
      WriteLn('[5] - Fim de Programa');
      WriteLn;
      Write('Escolha uma opcao: ');
      ReadLn(OPCAO);
      if (OPCAO <> 5) then
      begin
        case (OPCAO) of
          1: ROTSOMA;
          2: ROTSUBTRACAO;
          3: ROTMULTIPLICACAO;
          4: ROTDIVISAO;
        else
          begin
            WriteLn;
            WriteLn('Opcao invalida - Tente novamente');
            WriteLn;
          end;
        end;
    end;
  end;
end.
