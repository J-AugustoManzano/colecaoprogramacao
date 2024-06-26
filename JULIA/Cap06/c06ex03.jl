# c06ex03.jl

using Printf 

struct Aluno
  Nome::String
  Turma::Char
  Sala::Int
  Notas::Vector{Float64}
end

alunos = Array{Aluno, 1}(undef, 8)

println("Escola de Computacao XPTO")
println("Cadastro Escolar de Aluno")
println()

for i in 1:8
  println("Aluno: $i")
  println()

  print("Nome ..............: ")
  nome = readline()

  print("Turma .............: ")
  turma = first(readline())

  print("Sala ..............: ")
  sala = parse(Int, readline())
  println()

  notas = zeros(4)
  for j in 1:4
    print("Entre a $j", "a nota ...: ")
    notas[j] = parse(Float64, readline())
  end

  alunos[i] = Aluno(nome, turma, sala, notas)
  println()
end

println("Escola de Computacao XPTO")
println("Cadastro Escolar de Aluno")
println()
println("DADOS DOS ALUNOS")
print("Aluno ") 
print("Nome                           ")
print("Sala ")
print("Turma ")
print("Nota1 ")
print("Nota2 ")
print("Nota3 ")
println("Nota4 ")
print("----- ")
print("------------------------------ ")
print("---- ")
print("----- ")
print("----- ")
print("----- ")
print("----- ")
println("----- ")

for i in 1:8
  @printf("%5d ", i)
  @printf("%-30s ", alunos[i].Nome)
  @printf("%4d ", alunos[i].Sala)
  @printf("%5c ", alunos[i].Turma)
  for j in 1:4
    @printf("%5.1f ", alunos[i].Notas[j])
  end
  println()
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
