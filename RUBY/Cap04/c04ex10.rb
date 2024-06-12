# c04ex10.rb

#!/usr/bin/env ruby

print "Entre valor para a variavel <A>: "
a = gets.chomp.to_i

print "Entre valor para a variavel <B>: "
b = gets.chomp.to_i

print "Entre valor para a variavel <X>: "
x = gets.chomp.to_i

if (!(x > 5))
  c = a + b
else
  c = a - b
end

puts
puts "Resultado = #{c}"

puts
print "Tecle <Enter> para encerrar... "
gets
