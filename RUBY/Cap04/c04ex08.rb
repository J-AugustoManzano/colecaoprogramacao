# c04ex08.rb

#!/usr/bin/env ruby

puts "Escolha o tipo de transporte:"
puts
puts "[M] - Motocicleta"
puts "[S] - Scooter"
puts

print "==> "
transp = gets.chomp.upcase

puts

if (transp == "M") || (transp == "S")
  puts "Transporte valido."
else
  puts "Transporte invalido."
end

puts
print "Tecle <Enter> para encerrar... "
gets
