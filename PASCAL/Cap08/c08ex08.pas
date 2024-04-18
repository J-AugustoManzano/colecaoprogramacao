program c08ex08;

const
  FIM = 10;

var
  MATRIZ: array[1..FIM] of Integer;
  INICIO: Integer;

function Vazia: Boolean;
begin
  if (INICIO = 0) then
    Vazia := True
  else
    Vazia := False;
end;

function Cheia: Boolean;
begin
  if (INICIO = FIM) then
    Cheia := True
  else
    Cheia := False;
end;

function Adicionar(ELEMENTO: Integer): Boolean;
begin
  if (Cheia) then
    Adicionar := False
  else
    begin
      INICIO := INICIO + 1;
      MATRIZ[INICIO] := ELEMENTO;
      Adicionar := True;
    end;
end;

function Retirar(var ELEMENTO: Integer): Boolean;
var
  I: Integer;
begin
  if (Vazia) then
    Retirar := False
  else
    begin
      ELEMENTO := MATRIZ[1];
      for I := 1 to INICIO - 1 do
        MATRIZ[I] := MATRIZ[I + 1];
      INICIO := INICIO - 1;
      Retirar := True;
    end;
end;

procedure Entrada;
var
  X: Integer;
begin
  Write('Entre com um elemento numerico: ');
  ReadLn(X);
  WriteLn;
  if (Adicionar(X)) then
    WriteLn('Elemento ', X, ' inserido na posicao ', INICIO, '.')
  else
    WriteLn('Impossivel adicionar ', X, ' - fila lotada.');
  WriteLn;
end;

procedure Saida;
var
  ELEMENTO: Integer;
begin
  if (Retirar(ELEMENTO)) then
    WriteLn('Elemento ', ELEMENTO, ' retirado do inicio da fila.')
  else
    WriteLn('Impossivel retirar elemento - fila vazia.');
  WriteLn;
end;

procedure Atual;
begin
  if (not Vazia) then
    WriteLn(MATRIZ[1], ' - primeiro elemento da fila.')
  else
    WriteLn('Impossivel apresentar - fila vazia.');
  WriteLn;
end;

procedure Exibicao;
var
  I: Integer;
begin
  if (not Vazia) then
    begin
      for I := 1 to INICIO do
        WriteLn('Posicao: ', I:2, ' = ', MATRIZ[I]);
    end
  else
    WriteLn('Impossivel apresentar - fila vazia.');
  WriteLn;
end;

procedure Criar;
var
  I: Integer;
begin
  INICIO := 0;
  for I := 1 to FIM do
    MATRIZ[I] := 0;
end;

var
  OPCAO: Integer;

begin
  Criar;
  OPCAO := 0;
  while (OPCAO <> 6) do
    begin
      WriteLn('PROGRAMA: FILA');
      WriteLn;
      WriteLn('[1] - Entrada');
      WriteLn('[2] - Saida');
      WriteLn('[3] - Apresentar 1o. da fila');
      WriteLn('[4] - Apresentar a fila');
      WriteLn('[5] - Nova fila');
      WriteLn('[6] - Sair');
      WriteLn;
      Write('Escolha uma opcao: ');
      ReadLn(OPCAO);
      WriteLn;
      if (OPCAO <> 6) then
        begin
          case (OPCAO) of
            1: Entrada;
            2: Saida;
            3: Atual;
            4: Exibicao;
            5: Criar;
          else
            WriteLn('Opcao invalida. Tente novamente.');
            WriteLn;
          end;
        end;
    end;
end.
