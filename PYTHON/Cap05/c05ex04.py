# c05ex04.py

resp = "S"
while not (resp.upper() != "S"):
  n = int(input("Entre um valor numerico: "))

  r = n * 3
  print("Resultado =", r)
  print()

  resp = input("Deseja continuar? (S/N): ").upper()[0]

  print()

input("\nTecle <Enter> para encerrar... ")
