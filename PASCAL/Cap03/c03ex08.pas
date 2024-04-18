program c03ex08;

var
  A, B, X: Integer;

{
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
}

begin
  WriteLn('ADICAO DE NUMEROS');
  WriteLn;

  { Entrada de dados }

  Write('Entre o 1o. valor numerico: ');
  ReadLn(A);

  Write('Entre o 2o. valor numerico: ');
  ReadLn(B);

  { Processamento de dados }

  X := A + B; // Cálculo da adição
  
  { Saída de dados }

  WriteLn('Resultado = ', X);
  
  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
