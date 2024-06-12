# c07ex02.rb

#!/usr/bin/env ruby

print "Entre um valor para a variavel <A>: "
a = gets.chomp.to_i

print "Entre um valor para a variavel <B>: "
b = gets.chomp.to_i

x = a
a = b
b = x

puts "\nVariavel <A> com valor #{a}"
puts "Variavel <B> com valor #{b}"

print "\nTecle <Enter> para encerrar... "
gets
