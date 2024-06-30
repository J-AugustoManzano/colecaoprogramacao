-- c05ex02.lua

resp = "S"
while (resp:upper() == "S") do
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3

  print("Resultado = " .. r)
  print()

  io.write("Deseja continuar? (S/N): ")
  resp = io.read():sub(1, 1):upper()

  print()
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
