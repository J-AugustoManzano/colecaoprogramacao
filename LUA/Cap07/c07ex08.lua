-- c07ex08.lua

function fatorial(n)
  if n == 0 then
    return 1
  else
    return n * fatorial(n - 1)
  end
end

io.write("Qual fatorial: ")
local limite = tonumber(io.read())

print("Fatorial = " .. fatorial(limite))

io.write("\nPressione <Enter> para encerrar... ")
io.read()
