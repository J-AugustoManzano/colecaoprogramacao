# c05ex05.py

i = 1
while True:
  n = int(input("Entre um valor numerico: "))

  r = n * 3

  print("Resultado =", r)
  print()

  i += 1
  if not (i > 5):
    continue
  else:
    break

input("\nTecle <Enter> para encerrar... ")
