# c08ex09.jl

using Printf

function fibonacci(n)::Int64
  if (n == 0)
    return 0
  elseif (n == 1)
    return 1
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

for i in 0:14
  @printf "%2d - %d\n" i fibonacci(i)
end

print("\nTecle <Enter> para encerrar... ")
readline()
