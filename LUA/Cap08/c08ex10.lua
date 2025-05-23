-- c08ex10.lua

function fibonacci_base(n, x, y)
  if (n == 0) then
    return x
  end
  if (n == 1) then
    return y
  end
  if (n >= 2) then
    return fibonacci_base(n - 1, y, x + y)
  end
end

function fibonacci(n)
  return fibonacci_base(n, 0, 1)
end

for i = 0, 14 do
  print(string.format("%2d - %d", i, fibonacci(i)))
end

io.write("\nTecle <Enter> para encerrar... ")
io.read()
