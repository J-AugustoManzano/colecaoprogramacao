# c04ex08.py

print("Escolha o tipo de transporte:\n")
print("[M] - Motocicleta")
print("[S] - Scooter")
print()

transp = input("==> ").upper()

print()

if (transp == "M") or (transp == "S"):
  print("Transporte valido.")
else:
  print("Transporte invalido.")

input("\nTecle <Enter> para encerrar... ")
