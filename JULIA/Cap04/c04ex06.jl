# c04ex06.jl

print("Entre o 1o. valor numerico: ") 
a = parse(Float64, readline())

print("Entre o 2o. valor numerico: ")
b = parse(Float64, readline())

println()
println("Escolha uma OPCAO de menu:")
println()
println("[1] - Adicao")
println("[2] - Subtracao") 
println("[3] - Multiplicacao")
println("[4] - Divisao")
println()

print("==> ")
opcao = parse(Int, readline())

println()

if (opcao == 1)
  println("Calculo de adicao")
  println("Resultado: $(a + b)")
elseif (opcao == 2)
  println("Calculo de subtracao")
  println("Resultado: $(a - b)")
elseif (opcao == 3)
  println("Calculo de multiplicacao")
  println("Resultado: $(a * b)")
elseif (opcao == 4)
  println("Calculo de divisao")
  if (b == 0.0)
    println("Resultado: ERRO")
  else
    println("Resultado: $(a / b)")
  end
else
  println("Entrada invalida")
  println("Tente novamente em outro momento")
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
