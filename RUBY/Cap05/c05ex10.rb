# c05ex10.rb

#!/usr/bin/env ruby

resp = "S"
loop do
  print "Entre um valor numerico: "
  n = gets.chomp.to_i

  r = n * 3

  puts "Resultado = #{r}"
  puts

  print "Deseja continuar? (S/N): "
  resp = gets.chomp

  break if (resp.upcase != "S")
  puts 
end 

puts 
print "\nTecle <Enter> para encerrar... "
gets
