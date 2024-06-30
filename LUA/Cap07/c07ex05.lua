-- c07ex05.lua

function fatorial(n, fat)
  for i = 1, n do
    fat[1] = fat[1] * i
  end
end

local resp = {1}

io.write("Qual fatorial: ")
local limite = tonumber(io.read())

fatorial(limite, resp)

print("Fatorial = " .. resp[1])

io.write("\nTecle <Enter> para encerrar... ")
io.read()
