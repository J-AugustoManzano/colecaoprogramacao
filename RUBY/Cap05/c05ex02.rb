# c05ex02.rb

#!/usr/bin/env ruby

resp = "S"
while (resp.upcase == "S")
  print "Entre um valor numerico: "
  n = gets.chomp.to_i

  r = n * 3

  puts "Resultado = #{r}"
  puts

  print "Deseja continuar? (S/N): "
  resp = gets.chomp

  puts
end

puts
print "Tecle <Enter> para encerrar... "
gets
