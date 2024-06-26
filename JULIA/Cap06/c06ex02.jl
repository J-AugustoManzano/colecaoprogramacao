# c06ex02.jl

using Printf

notas = Array{Float64, 2}(undef, 8, 4)

for i in 1:8
  println("Entre as notas do aluno $i:")
  for j in 1:4
    print("Nota $j: ")
    notas[i, j] = parse(Float64, readline())
  end
  println()
end

println("\nRELATORIO DE NOTAS\n")
println("Aluno Nota1 Nota2 Nota3 Nota4")
println("----- ----- ----- ----- -----")
for i in 1:8
  @printf("%5d ", i)
  for j in 1:4
    @printf("%5.1f ", notas[i, j])
  end
  println()
end

print("\nTecle <Enter> para encerrar... ")
readline()
