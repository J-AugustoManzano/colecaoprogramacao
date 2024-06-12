# c04ex04.rb

#!/usr/bin/env ruby

print "Entre a 1a. nota .......: "
n1 = gets.chomp.to_f

print "Entre a 2a. nota .......: "
n2 = gets.chomp.to_f

print "Entre a 3a. nota .......: "
n3 = gets.chomp.to_f

print "Entre a 4a. nota .......: "
n4 = gets.chomp.to_f

md1 = (n1 + n2 + n3 + n4) / 4.0

if (md1 >= 7)
  puts
  puts "Aprovado"
  printf "Media: %.2f\n", md1
else
  print "Entre a nota de exame ..: "
  ne = gets.chomp.to_f
  md2 = (md1 + ne) / 2.0
  if (md2 >= 5)
    puts
    puts "Aprovado em exame"
  else
    puts
    puts "Reprovado"
  end
  printf "Media: %.2f\n", md2
end

puts
print "Tecle <Enter> para encerrar... "
gets
