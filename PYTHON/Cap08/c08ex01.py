# c08ex01.py

def caractere_especial(entra):
  caractere_especial = "!@#$%^&*()-_=+[]{}|;:',<>/?`~\""
  for i in caractere_especial:
    if i in entra:
      return True
  return False

def valida_inteiro(entra):
  try:
    return int(entra) == float(entra)
  except ValueError:
    return False

while True:
  print("Entre um valor numerico inteiro: ", end="")
  numero = input()
  print()

  if not (numero):
    print("Erro: Tecla <Enter> acionada acidentalmente.\n")
  elif caractere_especial(numero):
    print("Erro: Caractere especial nao permitido.\n")
  elif valida_inteiro(numero):
    print(f"Entrada valida fornecida: {numero}\n")
    break
  else:
    print("Erro: Entre um numero inteiro.\n")

input("\nTecle <Enter> para encerrar... ")
