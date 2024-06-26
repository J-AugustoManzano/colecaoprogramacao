# c08ex10.jl

using Printf

function fibonacci_base(n, x, y)::Int64
  if (n == 0)
    return x
  elseif (n == 1)
    return y
  else
    return fibonacci_base(n - 1, y, x + y)
  end
end

function fibonacci(n)::Int64
  return fibonacci_base(n, 0, 1)
end

for i in 0:14
  @printf "%2d - %d\n" i fibonacci(i)
end

print("\nTecle <Enter> para encerrar... ")
readline()
