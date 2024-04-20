program c04ex06;

var
  A, B, Opcao: Real;

begin
  Write('Entre o 1o. valor numerico: ');
  ReadLn(A);

  Write('Entre o 2o. valor numerico: ');
  ReadLn(B);

  WriteLn;
  WriteLn('Escolha uma opcao de menu:');
  WriteLn;
  WriteLn('[1] - Adicao');
  WriteLn('[2] - Subtracao');
  WriteLn('[3] - Multiplicacao');
  WriteLn('[4] - Divisao');
  WriteLn;

  Write('==> ');
  ReadLn(Opcao);
  WriteLn;

  case (Opcao) of
    1:
      begin
        WriteLn('Calculo de adicao');
        WriteLn('Resultado: ', (A + B));
      end;
    2:
      begin
        WriteLn('Calculo de subtracao');
        WriteLn('Resultado: ', (A - B));
      end;
    3:
      begin
        WriteLn('Calculo de multiplicacao');
        WriteLn('Resultado: ', (A * B));
      end;
    4:
      begin
        WriteLn('Calculo de divisao');
        if (B = 0) then
          WriteLn('Resultado: ERRO')
        else
          WriteLn('Resultado: ', (A / B));
      end;
    else
      begin
        WriteLn('Entrada invalida');
        WriteLn('Tente novamente em outro momento');
      end;
  end;

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
