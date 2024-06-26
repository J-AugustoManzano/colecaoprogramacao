# c04ex11.jl

print("Entre um numero inteiro: ")
n = parse(Int, readline())

r4 = n % 4
r5 = n % 5

if (r4 == 0) && (r5 == 0)
  println("Resultado = $n")
else
  println("Valor nao e divisivel por 4 e 5")
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
