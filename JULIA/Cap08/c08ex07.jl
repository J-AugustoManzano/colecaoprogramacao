# c08ex07.jl

using Printf

LIMITE = 10
matriz = Array{Int64}(undef, LIMITE)
topo = 0

function vazia()::Bool
  if (topo == 0)
    return true
  else
    return false
  end
end

function cheia()::Bool
  if (topo == LIMITE)
    return true
  else
    return false
  end
end

function adicionar(elemento)::Bool
  if (cheia())
    return false
  else
    global topo += 1
    matriz[topo] = elemento
    return true
  end
end

function retirar(elemento)::Bool
  if (vazia())
    return false
  else
    elemento[1] = matriz[topo]
    global topo -= 1
    return true
  end
end

function empilhar()
  print("Entre um elemento numerico: ")
  x = parse(Int, readline())
  println()
  if (adicionar(x))
    println("Elemento $x inserido na posicao $(topo).")
  else
    println("Impossivel adicionar $x - pilha cheia.")
  end
  println()
end

function desempilhar()
  if (vazia())
    println("Impossivel retirar elemento - pilha vazia.")
  else
    elemento = [1]
    if (retirar(elemento))
      println("Elemento $(elemento[1]) removido do topo da pilha.")
    end
  end
  println()
end

function mostrar()
  if (!(vazia()))
    for i in topo:-1:1
      @printf "Posicao %2d: %d\n" i matriz[i]
    end
  else
    println("Impossivel mostrar - pilha vazia.")
  end
  println()
end

function criar()
  global topo = 0
  for i in 1:LIMITE
    matriz[i] = 0
  end
end

criar()
opcao = 0
while (opcao != 5)
  println("PROGRAMA: PILHA\n")
  println("[1] - Empilhar")
  println("[2] - Desempilhar")
  println("[3] - Mostrar")
  println("[4] - Criar pilha")
  println("[5] - Sair\n")

  print("Escolha uma opcao: ")
  global opcao = parse(Int, readline())
  println()

  if (opcao != 5)
    if (opcao == 1)
      empilhar()
    elseif (opcao == 2)
      desempilhar()
    elseif (opcao == 3)
      mostrar()
    elseif (opcao == 4)
      criar()
    end
  end
end


