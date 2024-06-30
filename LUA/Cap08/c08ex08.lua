-- c08ex08.lua

LIMITE = 10
matriz = {}

function vazia()
  if (inicio == 0) then
    return true
  else
    return false
  end
end

function cheia()
  if (inicio == LIMITE) then
    return true
  else
    return false
  end
end

function adicionar(elemento)
  if (cheia()) then
    return false
  else
    inicio = inicio + 1
    matriz[inicio] = elemento
    return true
  end
end

function retirar(elemento)
  if (vazia()) then
    return false
  else
    elemento = matriz[1]
    for i = 1, inicio - 1 do
      matriz[i] = matriz[i + 1]
    end
    inicio = inicio - 1
    return true
  end
end

function entrada()
  io.write("Entre um elemento numerico: ")
  x = tonumber(io.read())
  print()
  if (adicionar(x)) then
    print("Elemento " .. x .. " inserido na posicao " .. inicio .. ".")
  else
    print("Impossivel adicionar " .. x .. " - fila lotada.")
  end
  print()
end

function saida()
  if (vazia()) then
    print("Impossivel retirar elemento - fila vazia.")
  else
    elemento = matriz[1]
    for i = 1, inicio - 1 do
      matriz[i] = matriz[i + 1]
    end
    inicio = inicio - 1
    print("Elemento " .. elemento .. " retirado do inicio da fila.")
  end
  print()
end

function atual()
  if (not vazia()) then
    print(matriz[1] .. " - primeiro elemento da fila.")
  else
    print("Impossivel apresentar - fila vazia.")
  end
  print()
end

function exibicao()
  local sf = string.format
  if (not vazia()) then
    for i = 1, inicio do
      print(sf("Posicao: %2d: possui o elemento %d.", i, matriz[i]))
    end
  else
    print("Impossivel apresentar - fila vazia.")
  end
  print()
end

function criar()
  inicio = 0
  for i = 1, LIMITE do
    matriz[i] = 0
  end
end

criar()
opcao = 0
while (opcao ~= 6) do
  print("PROGRAMA: FILA\n")
  print("[1] - Entrada")
  print("[2] - Saida")
  print("[3] - Apresentar 1o. da fila")
  print("[4] - Apresentar a fila")
  print("[5] - Nova fila")
  print("[6] - Sair\n")

  io.write("Escolha uma opcao: ")
  opcao = tonumber(io.read())
  print()

  if (opcao ~= 6) then
    if (opcao == 1) then
      entrada()
    elseif (opcao == 2) then
      saida()
    elseif (opcao == 3) then
      atual()
    elseif (opcao == 4) then
      exibicao()
    elseif (opcao == 5) then
      criar()
      print()
    end
  end
end
