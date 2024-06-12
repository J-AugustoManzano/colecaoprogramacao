# c04ex03.rb

#!/usr/bin/env ruby

print "Entre o 1o. valor numerico: "
a = gets.chomp.to_i

print "Entre o 2o. valor numerico: "
b = gets.chomp.to_i

x = a + b

if (x >= 10)
  r = x + 5
else
  r = x - 7
end

puts "Resultado = #{r}"

puts
print "Tecle <Enter> para encerrar... "
gets
