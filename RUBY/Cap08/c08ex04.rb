# c08ex04.rb

#!/usr/bin/env ruby

puts "CLASSIFICACAO DE NOMES (DECRESCENTE)\n\n"

nomes = []

for i in 0..4
  print "Entre o #{i + 1}o. nome: "
  nomes[i] = gets.chomp
end

for i in 0..3
  for j in (i+1)..4
    if (nomes[i] < nomes[j])
      x = nomes[i]
      nomes[i] = nomes[j]
      nomes[j] = x
    end
  end
end

puts "\n"
for i in 0..4
  puts "#{i + 1}o. nome: #{nomes[i]}"
end

print "\nTecle <Enter> para encerrar... "
gets
