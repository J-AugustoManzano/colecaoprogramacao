-- c07ex04.lua

function fatorial(n)
  local fat = 1
  for i = 1, n do
    fat = fat * i
  end
  print("Fatorial = " .. fat)
end

io.write("Qual fatorial: ")
local limite = tonumber(io.read())

fatorial(limite)

io.write("\nTecle <Enter> para encerrar... ")
io.read()
