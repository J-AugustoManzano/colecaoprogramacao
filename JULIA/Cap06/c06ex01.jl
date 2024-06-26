# c06ex01.jl

md = Array{Float64}(undef, 8)
global soma = 0.0

for i in 1:8
  print("Entre a media do aluno $i: ")
  md[i] = parse(Float64, readline())
  global soma += md[i]
end

media_geral = soma / 8
println("\nMedia geral: $(round(media_geral, digits=2))")

print("\nPressione <Enter> para encerrar... ")
readline()
