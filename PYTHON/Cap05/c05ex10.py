# c05ex10.py

resp = "S"
while True:
  n = int(input("Entre um valor numerico: "))

  r = n * 3
  print("Resultado =", r)
  print()

  resp = input("Deseja continuar? (S/N): ").upper()[0]

  if (resp.upper() != "S"):
    break

  print()

print()  
input("\nTecle <Enter> para encerrar... ")
