# c08ex08.jl

using Printf

LIMITE = 10
matriz = zeros(Int, LIMITE)
inicio = 0

function vazia()::Bool
  if (inicio == 0)
    return true
  else
    return false
  end
end

function cheia()::Bool
  if (inicio == LIMITE)
    return true
  else
    return false
  end
end

function adicionar(elemento)::Bool
  if (cheia())
    return false
  else
    global inicio += 1
    matriz[inicio] = elemento
    return true
  end
end

function retirar(elemento)::Bool
  if (vazia())
    return false
  else
    elemento = matriz[1]
    for i in 1:inicio
      matriz[i] = matriz[i+1]
    end
    inicio -= 1
    return true
  end
end

function entrada()
  print("Entre um elemento numerico: ")
  x = parse(Int, readline())
  println()
  if (adicionar(x))
    println("Elemento $x inserido na posicao $(inicio).")
  else
    println("Impossivel adicionar $x - fila lotada.")
  end
  println()
end

function saida()
  if (vazia())
    println("Impossivel retirar elemento - fila vazia.")
  else
    elemento = matriz[1]
    for i in 1:inicio
      matriz[i] = matriz[i+1]
    end
    global inicio -= 1
    println("Elemento $elemento retirado do inicio da fila.")
  end
  println()
end

function atual()
  if (!vazia())
    println("$(matriz[1]) - primeiro elemento da fila.")
  else
    println("Impossivel apresentar - fila vazia.")
  end
  println()
end

function exibicao()
  if (!vazia())
    for i in 1:inicio
      @printf "Posicao %2d: possui o elemento %d\n" i matriz[i]
    end
  else
    println("Impossivel apresentar - fila vazia.")
  end
  println()
end

function criar()
  global inicio = 0
  for i in 1:LIMITE
    matriz[i] = 0
  end
end

criar()
opcao = 0
while (opcao != 6)
  println("PROGRAMA: FILA\n")
  println("[1] - Entrada")
  println("[2] - Saida")
  println("[3] - Apresentar 1o. da fila")
  println("[4] - Apresentar a fila")
  println("[5] - Nova fila")
  println("[6] - Sair\n")

  print("Escolha uma opcao: ")
  global opcao = parse(Int, readline())
  println()

  if (opcao != 6)
    if (opcao == 1)
      entrada()
    elseif (opcao == 2)
      saida()
    elseif (opcao == 3)
      atual()
    elseif (opcao == 4)
      exibicao()
    elseif (opcao == 5)
      criar()
      println()
    end
  end
end
