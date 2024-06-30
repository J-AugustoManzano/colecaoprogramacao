-- c06ex04.lua

aluno = {}

io.write("Entre a quantidade de elementos da matriz: ")
n = tonumber(io.read())
io.write("\n")

for i = 1, n do
  io.write(string.format("Entre o %3do. nome: ", i))
  aluno[i] = io.read()
end

io.write("\nForam fornecidos os nomes:\n\n")

for i = 1, n do
  io.write(string.format("Nome %3d = %s\n", i, aluno[i]))
end

io.write("\nTecle <Enter> para encerrar... ")
io.read()
