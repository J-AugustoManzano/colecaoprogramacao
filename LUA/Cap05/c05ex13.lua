-- c05ex13.lua

for i = 1, 5, 1 do
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3

  print("Resultado = " .. r)
  print()
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
