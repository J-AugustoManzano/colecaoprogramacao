-- c06ex02.lua

notas = {}

for i = 1, 8 do
  notas[i] = {}

end

for i = 1, 8 do
  io.write("Entre as notas do aluno ", i, ":\n")
  for j = 1, 4 do
    io.write("Nota ", j, ": ")
    notas[i][j] = tonumber(io.read())
  end
  print()
end

print("\nRELATORIO DE NOTAS\n")
print("Aluno Nota1 Nota2 Nota3 Nota4")
print("----- ----- ----- ----- -----")
for i = 1, 8 do
  io.write(string.format("%5d ", i))
  for j = 1, 4 do
    io.write(string.format("%5.1f ", notas[i][j]))
  end
  print()
end

io.write("\nTecle <Enter> para encerrar... ")
io.read()
