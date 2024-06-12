# c05ex06.rb

#!/usr/bin/env ruby

resp = "S"
begin
  print "Entre um valor numerico: "
  n = gets.chomp.to_i

  r = n * 3

  puts "Resultado = #{r}"
  puts

  print "Deseja continuar? (S/N): "
  resp = gets.chomp

  puts
end until (resp.upcase != "S")

puts
print "Tecle <Enter> para encerrar... "
gets
