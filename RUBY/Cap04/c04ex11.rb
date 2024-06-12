# c04ex11.rb

#!/usr/bin/env ruby

print "Entre valor numerico: "
valor = gets.chomp.to_i

unless (valor > 100)
  puts "O valor e menor ou igual a 100."
else
  puts "O valor e maior que 100."
end

puts
print "Tecle <Enter> para encerrar... "
gets
