-- c05ex11.lua

resp = "S"
while true do
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3

  print("Resultado = " .. r)
  print()

  io.write("Deseja continuar? (S/N): ")
  resp = io.read():sub(1, 1):upper()

  if (resp:upper() ~= "S") then
    break
  end
  
  print()
end

print("\n")
io.write("Tecle <Enter> para encerrar... ")
io.read()
