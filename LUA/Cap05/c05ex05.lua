-- c05ex05.lua

i = 1
repeat
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3

  print("Resultado = " .. r)
  print()

  i = i + 1
until (i > 5)

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
