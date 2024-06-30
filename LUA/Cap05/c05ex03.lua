-- c05ex03.lua

i = 1
while not (i > 5) do
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3

  print("Resultado = " .. r)
  print()

  i = i + 1
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
