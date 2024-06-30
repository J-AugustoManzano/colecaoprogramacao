-- c07ex09.lua

function fatorial_base(n, p)
  if n == 0 then
    return p
  else
    return fatorial_base(n - 1, n * p)
  end
end

function fatorial(n)
  return fatorial_base(n, 1)
end

io.write("Qual fatorial: ")
local limite = tonumber(io.read())

print("Fatorial = " .. fatorial(limite))

io.write("\nPressione <Enter> para encerrar... ")
io.read()
