# c06ex01.py

md = {}
soma = 0

for i in range(1, 9):
  print(f"Entre a media do aluno {i}: ", end="")
  md[i] = float(input())
  soma += md[i]

media = soma / 8
print(f"\nMedia geral: {media:.2f}")

input("\nTecle <Enter> para encerrar... ")
