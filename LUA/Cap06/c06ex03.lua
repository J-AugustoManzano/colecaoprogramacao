-- c06ex03.lua

print("Escola de Computacao XPTO")
print("Cadastro Escolar de TAluno")
print()

alunos = {}

for i = 1, 8 do
  print("TAluno: " .. i)
  print()

  TAluno = {}

  io.write("Nome ..............: ")
  TAluno.NOME = io.read("*l")

  io.write("Turma .............: ")
  TAluno.TURMA = io.read("*l")

  io.write("Sala ..............: ")
  TAluno.SALA = tonumber(io.read("*l"))

  print()
  TAluno.NOTAS = {}
  for j = 1, 4 do
    io.write("Entre a " .. j .. "a. nota ..: ")
    table.insert(TAluno.NOTAS, tonumber(io.read("*l")))
  end

  print()
  table.insert(alunos, TAluno)
end

print("Escola de Computacao XPTO")
print("Cadastro Escolar de TAluno")
print()
print("DADOS DOS ALUNOS")
io.write("TAluno ")
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
io.write("----- ")
print()

for i = 1, 8 do
  io.write(string.format("%5d ", i))
  io.write(string.format("%-30s ", alunos[i].NOME))
  io.write(string.format("%4d ", alunos[i].SALA))
  io.write(string.format("%5s ", alunos[i].TURMA))
  for j = 1, 4 do
    io.write(string.format("%5.1f ", alunos[i].NOTAS[j]))
  end
  print()
end

io.write("\nTecle <Enter> para encerrar... ")
io.read()
