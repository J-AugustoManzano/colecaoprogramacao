# c05ex06.py

resp = "S"
while True:
  n = int(input("Entre um valor numerico: "))

  r = n * 3
  print("Resultado =", r)
  print()

  resp = input("Deseja continuar? (S/N): ").upper()[0]
  print()
  if not (resp.upper() != "S"):
    continue
  else:
    break

input("\nTecle <Enter> para encerrar... ")
