# c04ex09.py

print("Classificacao esportiva")
print()
print("Entre '1' se atleta pontuou na 1a. prova")
print("Entre '1' se atleta pontuou na 2a. prova")
print("Qualquer outro valor se nao pontuou nas provas")
print()

p1 = input("Prova 1: ")
p2 = input("Prova 2: ")

if ((p1 == "1" and not (p2 == "1")) or (not (p1 == "1") and p2 == "1")):
  print("Atleta participa da terceira prova.")
else:
  print("Atleta nao participa da terceira prova.")
  if (p1 == "1") and (p2 == "1"):
    print("Classificado para a final.")
  else:
    print("Desclassificado da competicao.")

input("\nTecle <Enter> para encerrar... ")
