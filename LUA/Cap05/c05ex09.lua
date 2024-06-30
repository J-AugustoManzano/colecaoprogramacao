-- c05ex09.lua

i = 1
while true do
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3

  print("Resultado = " .. r)
  print()

  if (i > 4) then
    break
  end
  i = i + 1
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
