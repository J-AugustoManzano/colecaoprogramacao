-- c08ex09.lua

function fibonacci(n)
  if (n == 0) then
    return 0
  end
  if (n == 1) then
    return 1
  end
  if (n >= 2) then
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

for i = 0, 14 do
  print(string.format("%2d - %d", i, fibonacci(i)))
end

io.write("\nTecle <Enter> para encerrar... ")
io.read()
