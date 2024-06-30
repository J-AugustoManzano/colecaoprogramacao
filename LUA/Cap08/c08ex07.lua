-- c08ex07.lua

LIMITE = 10
matriz = {}

local function vazia()
  if (topo == 0) then
    return true
  else
    return false
  end
end

local function cheia()
  if (topo == LIMITE) then
    return true
  else
    return false
  end
end

local function adicionar(elemento)
  if (cheia()) then
    return false
  else
    topo = topo + 1
    matriz[topo] = elemento
    return true
  end
end

local function retirar(elemento)
  if (vazia()) then
    return false
  else
    elemento[1] = matriz[topo]
    topo = topo - 1
    return true
  end
end

local function empilhar()
  io.write("Entre um elemento numerico: ")
  local x = tonumber(io.read())
  print()
  if (adicionar(x)) then
    print("Elemento " .. x .. " inserido na posicao " .. topo .. ".")
  else
    print("Impossivel adicionar " .. x .. " - pilha cheia.")
  end
  print()
end

local function desempilhar()
  if (vazia()) then
    print("Impossivel retirar elemento - pilha vazia.")
  else
    local elemento = {1}
    if (retirar(elemento)) then
      print("Elemento " .. elemento[1] .. " removido do topo da pilha.")
    end
  end
  print()
end

local function mostrar()
  if (not vazia()) then
    for i = topo, 1, -1 do
      print("Posicao " .. i .. ": " .. matriz[i])
    end
  else
    print("Impossivel mostrar - pilha vazia.")
  end
  print()
end

local function criar()
  topo = 0
  for i = 1, LIMITE do
    matriz[i] = 0
  end
end

criar()
local opcao = 0
while (opcao ~= 5) do
  print("PROGRAMA: PILHA\n")
  print("[1] - Empilhar")
  print("[2] - Desempilhar")
  print("[3] - mostrar")
  print("[4] - Criar pilha")
  print("[5] - Sair\n")

  io.write("Escolha uma opcao: ")
  opcao = tonumber(io.read())
  print()

  if (opcao ~= 5) then
    if (opcao == 1) then
      empilhar()
    elseif (opcao == 2) then
      desempilhar()
    elseif (opcao == 3) then
      mostrar()
    elseif (opcao == 4) then
      criar()
    end
  end
end
