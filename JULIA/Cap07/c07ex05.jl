# c07ex05.jl

function fatorial(n::Int, fat::Array{Int})
  for i in 1:n
    fat[1] *= i
  end
end

resp = [1]

print("Qual fatorial: ")
limite = parse(Int, readline())

fatorial(limite, resp)

println("Fatorial = $(resp[1])")

print("\nTecle <Enter> para encerrar... ")
readline()
