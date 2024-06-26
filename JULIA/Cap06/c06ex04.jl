# c06ex04.jl

using Printf

print("Entre a quantidade de elementos da matriz: ")
n = parse(Int, readline())
println()

aluno = Array{String}(undef, n)

for i in 1:n
  print("Entre o ", @sprintf("%3d", i), "o. nome: ")
  aluno[i] = readline()
end

println("\nForam fornecidos os nomes:\n")

for i in 1:n
  println("Nome ", @sprintf("%3d", i), " = ", aluno[i])
end

print("\nTecle <Enter> para encerrar... ")
readline()
