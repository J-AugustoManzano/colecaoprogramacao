# c04ex07.jl

print("Entre um numero inteiro: ")
numero = parse(Int, readline())

if (numero >= 20) && (numero <= 90)
  println("O numero esta na faixa de 20 a 90.")
else
  println("O numero esta fora da faixa de 20 a 90.")
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
