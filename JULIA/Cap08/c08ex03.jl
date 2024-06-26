# c08ex03.jl

println("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n")

numeros = zeros(Int, 5)

for i in 1:5
  print("Entre o $(i)o. numero: ")
  numeros[i] = parse(Int, readline())
end

for i in 1:4
  for j in (i + 1):5
    if (numeros[i] > numeros[j])
      x = numeros[i]
      numeros[i] = numeros[j]
      numeros[j] = x
    end
  end
end

println()
for i in 1:5
  println("$(i)o. numero: $(numeros[i])")
end

print("\nPressione <Enter> para encerrar... ")
readline()
