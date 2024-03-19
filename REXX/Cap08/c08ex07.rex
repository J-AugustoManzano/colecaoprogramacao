/* c08ex07.rex */

LIMITE = 10

call criar 
OPCAO = 0
do while (OPCAO \== 5)
  say "PRGRAMA: PILHA"
  say
  say "[1] - Empilhar"
  say "[2] - Desempilhar"
  say "[3] - Apresentar"
  say "[4] - Criar pilha"
  say "[5] - Sair"
  say
  call charout, "Escolha uma opcao: "
  pull OPCAO
  if (OPCAO \== 5) then
    select
      when (OPCAO == 1) then call empilhar
      when (OPCAO == 2) then call desempilhar
      when (OPCAO == 3) then call mostrar
      when (OPCAO == 4) then 
        do
          call criar
          say
        end
    end
end

exit

vazia: 
  if (TOPO == 0) then
    return 1
  else
    return 0

cheia: 
  if (TOPO == LIMITE) then
    return 1
  else
    return 0

adicionar: 
  arg ELEMENTO
  if (cheia()) then
    return 0
  else
    do
      TOPO = TOPO + 1
      MATRIZ.TOPO = ELEMENTO
      return 1
    end

retirar: 
  arg ELEMENTO
  if (vazia()) then
    return 0
  else
    do
      ELEMENTO = MATRIZ.TOPO
      MATRIZ.TOPO = 0
      TOPO = TOPO - 1
      return 1
    end

empilhar: 
  say
  call charout, "Entre um elemento numericoo: "
  pull X
  if (adicionar(X)) then
    do
      say
      call charout, "Elemento " || X 
      say " inserido na posicao " || TOPO || "."
      say
    end
  else
    do
      say
      call charout, "Impossivel adicionar elemento "
      say X || " - pilha cheia."
      say
    end
return

desempilhar: 
  say
  if (retirar(x)) then
    do
      say "Elemento " || X || " retirado do topo da pilha."
      say
    end
  else
    do
      say "Impossivel retirar elemento - pilha vazia."
      say
    end
return

mostrar: 
  say
  if \ (vazia()) then
    do I = TOPO to 1 by -1
      say "Posicao: " || format(I, "2") || " = " || MATRIZ.I
    end
  else
    say "Impossivel apresentar - pilha vazia."
  say
return

criar: 
  TOPO = 0
  do I = 1 to LIMITE
    MATRIZ.I = 0
  end
return
