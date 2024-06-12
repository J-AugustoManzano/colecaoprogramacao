# c03ex04.rb

#!/usr/bin/env ruby

print "Entre quantidade de horas trabalhadas ..: "
ht = gets.chomp.to_f

print "Entre valor do salario-hora ............: "
vh = gets.chomp.to_f

print "Entre valor do percentual de desconto ..: "
pd = gets.chomp.to_f

sb = ht * vh
td = (pd / 100.0) * sb
sl = sb - td

puts "\nSalario Bruto ....: %8.2f" % sb
puts "Salario Liquido ..: %8.2f" % sl

print "\nTecle <Enter> para encerrar... "
gets
