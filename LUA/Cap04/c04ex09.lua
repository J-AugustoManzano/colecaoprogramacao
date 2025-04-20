-- c04ex09.lua

print("Classificacao esportiva")
print()
print("Entre '1' se atleta pontuou na 1a. prova")
print("Entre '1' se atleta pontuou na 2a. prova")
print("Qualquer outro valor se nao pontuou nas provas")
print()

io.write("Prova 1: ")
p1 = io.read()

io.write("Prova 2: ")
p2 = io.read()

if ((p1 == "1" and not (p2 == "1")) or (not (p1 == "1") and p2 == "1")) then
  print("Atleta participa da terceira prova.")
else
  print("Atleta nao participa da terceira prova.")
  if (p1 == "1") and (p2 == "1") then
    print("Classificado para a final.")
  else
    print("Desclassificado da competicao.")
  end
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
