# c08ex04.py

print("CLASSIFICACAO DE NOMES (DECRESCENTE)\n")

nomes = {}

for i in range(1, 6):
  nomes[i] = input(f"Entre o {i}o. nome: ")

for i in range(1, 5):
  for j in range(i + 1, 6):
    if (nomes[i] < nomes[j]):
      x = nomes[i]
      nomes[i] = nomes[j]
      nomes[j] = x

print()
for i in range(1, 6):
  print(f"{i}o. nome: {nomes[i]}")

input("\nPressione <Enter> para encerrar... ")
