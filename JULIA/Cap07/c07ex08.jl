# c07ex08.jl

function fatorial(n::Int)::Int
  if (n == 0)
    return 1
  else
    return n * fatorial(n - 1)
  end
end

print("Qual fatorial: ")
limite = parse(Int, readline())

println("Fatorial = ", fatorial(limite))

print("\nPressione <Enter> para encerrar... ")
readline()
