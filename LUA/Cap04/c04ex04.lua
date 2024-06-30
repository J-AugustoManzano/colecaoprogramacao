-- c04ex04.lua

io.write("Entre a 1a. nota .......: ")
n1 = tonumber(io.read())

io.write("Entre a 2a. nota .......: ")
n2 = tonumber(io.read())

io.write("Entre a 3a. nota .......: ")
n3 = tonumber(io.read())

io.write("Entre a 4a. nota .......: ")
n4 = tonumber(io.read())

md1 = (n1 + n2 + n3 + n4) / 4

if (md1 >= 7) then
  print()
  print("Aprovado")
  print("Media: " .. string.format("%.2f", md1))
else
  io.write("Entre a nota de exame ..: ")
  ne = tonumber(io.read())
  md2 = (md1 + ne) / 2
  if (md2 >= 5) then
    print()
    print("Aprovado em exame")
  else
    print()
    print("Reprovado")
  end
  print("Media: " .. string.format("%.2f", md2))
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
