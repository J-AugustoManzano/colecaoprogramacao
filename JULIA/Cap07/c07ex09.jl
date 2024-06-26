# c07ex09.jl

function fatorial_base(n::Int, p::Int)::Int
  if (n == 0)
    return p
  else
    return fatorial_base(n - 1, n * p)
  end
end

function fatorial(n::Int)::Int
  return fatorial_base(n, 1)
end

print("Qual fatorial: ")
limite = parse(Int, readline())

println("Fatorial = ", fatorial(limite))

print("\nPressione <Enter> para encerrar... ")
readline()
