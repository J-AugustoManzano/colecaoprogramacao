program c08ex07;

const
  LIMITE = 10;

var
  MATRIZ: array[1..LIMITE] of Integer;
  TOPO: Integer;

function Vazia: Boolean;
begin
  if (TOPO = 0) then
    Vazia := True
  else
    Vazia := False;
end;

function Cheia: Boolean;
begin
  if (TOPO = LIMITE) then
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
      TOPO := TOPO + 1;
      MATRIZ[TOPO] := ELEMENTO;
      Adicionar := True;
    end;
end;

function Retirar(var ELEMENTO: Integer): Boolean;
begin
  if (Vazia) then
    Retirar := False
  else 
    begin
      ELEMENTO := MATRIZ[TOPO];
      MATRIZ[TOPO] := 0;
      TOPO := TOPO - 1;
      Retirar := True;
    end;
end;

procedure Empilhar;
var
  X: Integer;
begin
  Write('Entre com um elemento numerico: ');
  ReadLn(X);
  WriteLn;
  if (Adicionar(X)) then
    WriteLn('Elemento ', X, ' inserido na posicao ', TOPO, '.')
  else
    WriteLn('Impossivel adicionar ', X, ' - pilha cheia.');
  WriteLn;
end;

procedure Desempilhar;
var
  ELEMENTO: Integer;
begin
  if (Retirar(ELEMENTO)) then
    WriteLn('Elemento ', ELEMENTO, ' retirado do topo da pilha.')
  else
    WriteLn('Impossivel retirar elemento - pilha vazia.');
  WriteLn;
end;

procedure Mostrar;
var
  I: Integer;
begin
  if (not Vazia) then
    begin
      for I := TOPO downto 1 do
        WriteLn('Posicao: ', I:2, ' = ', MATRIZ[I]);
    end
  else
    WriteLn('Impossivel apresentar - pilha vazia.');
  WriteLn;
end;

procedure Criar;
var
  I: Integer;
begin
  TOPO := 0;
  for I := 1 to LIMITE do
    MATRIZ[I] := 0;
end;

var 
  Opcao: Integer;

begin
  Criar;
  Opcao := 0;
  while (Opcao <> 5) do
    begin
      WriteLn('PESQUISA BINARIA DE NUMEROS');
      WriteLn;
      WriteLn('[1] - Empilhar');
      WriteLn('[2] - Desempilhar');
      WriteLn('[3] - Mostrar');
      WriteLn('[4] - Criar pilha');
      WriteLn('[5] - Sair');
      WriteLn;
      Write('Escolha uma opcao: ');
      ReadLn(Opcao);
      WriteLn;
      case Opcao of
        1: Empilhar;
        2: Desempilhar;
        3: Mostrar;
        4: Criar;
      else
        WriteLn('Opcao invalida. Tente novamente.');
        WriteLn;
      end;
    end;
end.
