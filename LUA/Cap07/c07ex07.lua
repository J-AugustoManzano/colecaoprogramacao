-- c07ex07.lua

function igual(a, b)
  if (a == b) then
    return true
  else
    return false
  end
end

io.write("Informe o 1o. valor: ")
local x = tonumber(io.read())

io.write("Informe o 2o. valor: ")
local y = tonumber(io.read())

if (igual(x, y)) then
  print("Valores sao iguais")
else
  print("Valores sao diferentes")
end

io.write("\nPressione <Enter> para encerrar... ")
io.read()
