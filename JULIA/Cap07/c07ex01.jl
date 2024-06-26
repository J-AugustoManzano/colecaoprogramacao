# c07ex01.jl

function rotsoma()
  println()
  println("Rotina de Adicao")
  println()
  print("Entre o 1o. valor: ")
  a1 = parse(Float64, readline())
  print("Entre o 2o. valor: ")
  b1 = parse(Float64, readline())
  println()
  r1 = a1 + b1
  println("O resultado da operacao equivale a: $(round(r1, digits=2))")
  println()
end

function rotsubtracao()
  println()
  println("Rotina de Subtracao")
  println()
  print("Entre o 1o. valor: ")
  a2 = parse(Float64, readline())
  print("Entre o 2o. valor: ")
  b2 = parse(Float64, readline())
  println()
  r2 = a2 - b2
  println("O resultado da operacao equivale a: $(round(r2, digits=2))")
  println()
end

function rotmultiplicacao()
  println()
  println("Rotina de Multiplicacao")
  println()
  print("Entre o 1o. valor: ")
  a3 = parse(Float64, readline())
  print("Entre o 2o. valor: ")
  b3 = parse(Float64, readline())
  println()
  r3 = a3 * b3
  println("O resultado da operacao equivale a: $(round(r3, digits=2))")
  println()
end

function rotdivisao()
  println()
  println("Rotina de Divisao")
  println()
  print("Entre o 1o. valor: ")
  a4 = parse(Float64, readline())
  print("Entre o 2o. valor: ")
  b4 = parse(Float64, readline())
  println()
  if (b4 == 0)
    println("O resultado da operacao equivale a: ERRO")
  else
    r4 = a4 / b4
    println("O resultado da operacao equivale a: $(round(r4, digits=2))")
  end
  println()
end

global opcao = 0
while (opcao != 5)
  println("CALCULADORA - V1")
  println()
  println("[1] - Adicao")
  println("[2] - Subtracao")
  println("[3] - Multiplicacao")
  println("[4] - Divisao")
  println("[5] - Fim de Programa")
  println()
  print("Escolha uma opcao: ")
  global opcao = parse(Int, readline())
  if (opcao != 5)
    if (opcao == 1)
      rotsoma()
    elseif (opcao == 2)
      rotsubtracao()
    elseif (opcao == 3)
      rotmultiplicacao()
    elseif (opcao == 4)
      rotdivisao()
    else
      println("\nOpcao invalida - Tente novamente\n")
    end
  end
end
