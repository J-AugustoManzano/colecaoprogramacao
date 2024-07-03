# c06ex03.py

class Aluno:
  def __init__(self):
    self.Nome = ""
    self.Turma = ""
    self.Sala = 0
    self.Notas = [0.0] * 4

ALUNO = [Aluno() for _ in range(8)]

print("Escola de Computacao XPTO")
print("Cadastro Escolar de Aluno")
print()

for i in range(8):
  print(f"Aluno: {i+1}")
  print()

  ALUNO[i].Nome = input("Nome ..............: ")
  ALUNO[i].Turma = input("Turma .............: ")
  ALUNO[i].Sala = int(input("Sala ..............: "))
  print()

  for j in range(4):
    ALUNO[i].Notas[j] = float(input(f"Entre a {j+1}a. nota ..: "))

  print()

print("Escola de Computacao XPTO")
print("Cadastro Escolar de Aluno")
print()
print("DADOS DOS ALUNOS")

print("Aluno ", end="")
print("Nome                           ", end="")
print("Sala ", end="")
print("Turma ", end="")
print("Nota1 ", end="")
print("Nota2 ", end="")
print("Nota3 ", end="")
print("Nota4 ")

print("----- ", end="")
print("------------------------------ ", end="")
print("---- ", end="")
print("----- ", end="")
print("----- ", end="")
print("----- ", end="")
print("----- ", end="")
print("----- ")

for i in range(8):
    print(f"{i+1:5d} ", end="")
    print(f"{ALUNO[i].Nome:30} ", end="")
    print(f"{ALUNO[i].Sala:4} ", end="")
    print(f"{int(ALUNO[i].Turma):5} ", end="")
    for j in range(4):
        print(f"{ALUNO[i].Notas[j]:5.1f} ", end="")
    print()

print()
input("Tecle <Enter> para encerrar... ")
