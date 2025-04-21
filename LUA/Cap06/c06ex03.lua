-- c06ex03.lua

print("Escola de Computacao XPTO")
print("Cadastro Escolar de Aluno")
print()

alunos = {}

for i = 1, 8 do
  print("Aluno: " .. i)
  print()

  Aluno = {}

  io.write("Nome ..............: ")
  Aluno.Nome = io.read("*l")

  io.write("Turma .............: ")
  Aluno.Turma = io.read("*l")

  io.write("Sala ..............: ")
  Aluno.Sala = tonumber(io.read("*l"))

  print()
  Aluno.Notas = {}
  for j = 1, 4 do
    io.write("Entre a " .. j .. "a. nota ..: ")
    Aluno.Notas[j] = tonumber(io.read("*l"))
  end

  print()
  table.insert(alunos, Aluno)
end

print("Escola de Computacao XPTO")
print("Cadastro Escolar de Aluno")
print()
print("DADOS DOS ALUNOS")
io.write("Aluno ")
io.write("Nome                           ")
io.write("Sala ")
io.write("Turma ")
io.write("Nota1 ")
io.write("Nota2 ")
io.write("Nota3 ")
io.write("Nota4 ")
print()
io.write("----- ")
io.write("------------------------------ ")
io.write("---- ")
io.write("----- ")
io.write("----- ")
io.write("----- ")
io.write("----- ")
print()

for i = 1, 8 do
  io.write(string.format("%5d ", i))
  io.write(string.format("%-30s ", alunos[i].Nome))
  io.write(string.format("%4d ", alunos[i].Sala))
  io.write(string.format("%5s ", alunos[i].Turma))
  for j = 1, 4 do
    io.write(string.format("%5.1f ", alunos[i].Notas[j]))
  end
  print()
end

io.write("\nTecle <Enter> para encerrar... ")
io.read()
