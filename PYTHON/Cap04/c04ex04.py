# c04ex04.py

n1 = float(input("Entre a 1a. nota .......: "))
n2 = float(input("Entre a 2a. nota .......: "))
n3 = float(input("Entre a 3a. nota .......: "))
n4 = float(input("Entre a 4a. nota .......: "))

md1 = (n1 + n2 + n3 + n4) / 4

if (md1 >= 7):
  print()
  print("Aprovado")
  print(f"Media: {md1:.2f}")
else:
  ne = float(input("Entre a nota de exame ..: "))
  md2 = (md1 + ne) / 2
  if (md2 >= 5):
    print()
    print("Aprovado em exame")
  else:
    print()
    print("Reprovado")
  print(f"Media: {md2:.2f}")

input("\nTecle <Enter> para encerrar... ")
