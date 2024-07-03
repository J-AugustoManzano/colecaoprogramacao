# c08ex03.py

print("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n")

numeros = {}

for i in range(1, 6):
  numeros[i] = int(input(f"Entre o {i}o. numero: "))

for i in range(1, 5):
  for j in range(i + 1, 6):
    if (numeros[i] > numeros[j]):
      x = numeros[i]
      numeros[i] = numeros[j]
      numeros[j] = x

print()
for i in range(1, 6):
  print(f"{i}o. numero: {numeros[i]}")

input("\nTecle <Enter> para encerrar... ")
