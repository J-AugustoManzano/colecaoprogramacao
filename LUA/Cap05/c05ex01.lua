-- c05ex01.lua

i = 1
while (i <= 5) do
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
