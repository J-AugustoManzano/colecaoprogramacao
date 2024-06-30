-- c07ex06.lua

function fatorial(n)
  local fat = 1
  for i = 1, n do
    fat = fat * i
  end
  return fat
end

io.write("Qual fatorial: ")
local limite = tonumber(io.read())

print("Fatorial = " .. fatorial(limite))

io.write("\nTecle <Enter> para encerrar... ")
io.read()
