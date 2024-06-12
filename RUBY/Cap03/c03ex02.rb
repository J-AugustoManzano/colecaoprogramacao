# c03ex02.rb

#!/usr/bin/env ruby

print "Entre valor do raio: "
r = gets.chomp.to_f

a = Math::PI * r ** 2

puts "Resultado = #{a.round(2)}"

puts
print "Tecle <Enter> para encerrar... "
gets
