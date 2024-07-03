# c06ex02.py

notas = {}

for i in range(1, 9):
  notas[i] = {}

for i in range(1, 9):
  print(f"Entre as notas do aluno {i}:")
  for j in range(1, 5):
    nota = float(input(f"Nota {j}: "))
    notas[i][j] = nota
  print()

print("\nRELATORIO DE NOTAS\n")
print("Aluno Nota1 Nota2 Nota3 Nota4")
print("----- ----- ----- ----- -----")
for i in range(1, 9):
  print(f"{i:5d}", end=" ")
  for j in range(1, 5):
    print(f"{notas[i][j]:5.1f}", end=" ")
  print()

input("\nTecle <Enter> para encerrar... ")
