# c04ex03.py

a = float(input("Entre o 1o. valor numerico: "))
b = float(input("Entre o 2o. valor numerico: "))

x = a + b

if (x >= 10):
  r = x + 5
else:
  r = x - 7

print(f"Resultado = {r}")

input("\nTecle <Enter> para encerrar... ")
