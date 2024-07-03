# c06ex04.py

aluno = {}

print("Entre a quantidade de elementos da matriz: ", end="")
n = int(input())
print()

for i in range(1, n+1):
  print(f"Entre o {i:3}o. nome: ", end="")
  aluno[i] = input()

print("\nForam fornecidos os nomes:\n")

for i in range(1, n+1):
  print(f"Nome {i:3} = {aluno[i]}")

input("\nTecle <Enter> para encerrar... ")
