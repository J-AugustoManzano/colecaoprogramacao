/* c08ex08.rex */

FIM = 10

call criar 
OPCAO = 0
do while (OPCAO \== 6)
  say "PRGRAMA: FILA"
  say
  say "[1] - Entrada"
  say "[2] - Saida"
  say "[3] - Apresentar 1o. da fila"
  say "[4] - Apresentar a fila"
  say "[5] - Nova fila"
  say "[6] - Sair"
  say
  call charout, "Escolha uma opcao: "
  pull OPCAO
  if (OPCAO \== 6) then
    select
      when (OPCAO == 1) then call entrada
      when (OPCAO == 2) then call saida
      when (OPCAO == 3) then call atual
      when (OPCAO == 4) then call exibicao
      when (OPCAO == 5) then 
        do
          call criar
          say
        end
    end
end

exit

vazia: 
  if (INICIO == 0) then
    return 1
  else
    return 0

cheia: 
  if (INICIO == FIM) then
    return 1
  else
    return 0

adicionar: 
  arg ELEMENTO
  if (cheia()) then
    return 0
  else
    do
      INICIO = INICIO + 1
      MATRIZ.INICIO = ELEMENTO
      return 1
    end

retirar: 
  arg ELEMENTO
  if (vazia()) then
    return 0
  else
    do
      ELEMENTO = MATRIZ.1
      do I = 1 to INICIO - 1
        MATRIZ.I = MATRIZ.[I + 1]
      end
      INICIO = INICIO - 1
      return 1
    end

entrada: 
  say
  call charout, "Entre um elemento numericoo: "
  pull X
  if (adicionar(X)) then
    do
      say
      call charout, "Elemento " || X
      say " inserido na posicao " || INICIO || "."
      say
    end
  else
    do
      say
      call charout, "Impossivel adicionar elemento "
      say X || " - fila lotada."
      say
    end
return

saida: 
  say
  if (retirar(x)) then
    do
      say "Elemento " || X || " retirado do inicio da fila."
      say
    end
  else
    do
      say "Impossivel retirar elemento - fila vazia."
      say
    end
return

atual:
  say
  if \ (vazia()) then
    do
      call charout, MATRIZ.1
      say " primeiro elemento da fila neste momento."
      say
    end
  else
    do
      say "Impossivel apresentar - fila vazia."
      say
    end 
return

exibicao: 
  say
  if \ (vazia()) then
    do I = 1 to INICIO
      call charout, "Posicao: " || format(I, "2")
      say " possui o elemento " || MATRIZ.I || "."
    end
  else
    say "Impossivel apresentar - fila vazia."
  say
return

criar: 
  INICIO = 0
  do I = 1 to FIM
    MATRIZ.I = 0
  end
return
