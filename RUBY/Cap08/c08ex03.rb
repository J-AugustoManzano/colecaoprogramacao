# c08ex03.rb

#!/usr/bin/env ruby

puts "CLASSIFICACAO DE NUMEROS (CRESCENTE)\n\n"

numeros = []

for i in 0..4
  print "Entre o #{i + 1}o. numero: "
  numeros[i] = gets.chomp.to_i
end

for i in 0..3
  for j in (i + 1)..4
    if (numeros[i] > numeros[j])
      x = numeros[i]
      numeros[i] = numeros[j]
      numeros[j] = x
    end
  end
end

puts "\n"
for i in 0..4
  puts "#{i + 1}o. numero: #{numeros[i]}"
end

print "\nPressione <Enter> para encerrar... "
gets
