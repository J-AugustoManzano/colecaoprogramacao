# c07ex06.jl

function fatorial(n::Int)::Int
  fat = 1
  for i in 1:n
    fat *= i
  end
  return fat
end

print("Qual fatorial: ")
limite = parse(Int, readline())

print("Fatorial = ", fatorial(limite), "\n")

print("\nPressione <Enter> para encerrar... ")
readline()
