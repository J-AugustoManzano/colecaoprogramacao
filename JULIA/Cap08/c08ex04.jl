# c08ex04.jl

println("CLASSIFICACAO DE NOMES (DECRESCENTE)\n")

nomes = Array{String}(undef, 5)

for i in 1:5
  print("Entre o $i", "o. nome: ")
  nomes[i] = chomp(readline())
end

for i in 1:4
  for j in (i+1):5
    if (nomes[i] < nomes[j])
      x = nomes[i]
      nomes[i] = nomes[j]
      nomes[j] = x
    end
  end
end

println()
for i in 1:5
  println("$i", "o. nome: $(nomes[i])")
end

print("\nTecle <Enter> para encerrar... ")
readline()
