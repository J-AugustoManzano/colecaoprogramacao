# c08ex08.py

LIMITE = 10
matriz = {}
inicio = 0

def vazia():
  global inicio
  if (inicio == 0):
    return True
  else:
    return False

def cheia():
  global inicio
  if (inicio == LIMITE):
    return True
  else:
    return False

def adicionar(elemento):
  global inicio
  if (cheia()):
    return False
  else:
    inicio = inicio + 1
    matriz[inicio] = elemento
    return True

def retirar(elemento):
  global inicio
  if (vazia()):
    return False
  else:
    elemento = matriz[1]
    for i in range(1, inicio):
      matriz[i] = matriz[i + 1]
    inicio = inicio - 1
    return True

def entrada():
  global inicio
  x = int(input("Entre um elemento numerico: "))
  print()
  if (adicionar(x)):
    print(f"Elemento {x} inserido na posicao {inicio}.")
  else:
    print("Impossivel adicionar " + str(x) + " - fila lotada.")
  print()

def saida():
  global inicio
  if (vazia()):
    print("Impossivel retirar elemento - fila vazia.")
  else:
    elemento = matriz[1]
    for i in range(1, inicio):
      matriz[i] = matriz[i + 1]
    inicio = inicio - 1
    print(f"Elemento {elemento} retirado do inicio da fila.")
  print()

def atual():
  if (not vazia()):
    print(str(matriz[1]) + " - primeiro elemento da fila.")
  else:
    print("Impossivel apresentar - fila vazia.")
  print()

def exibicao():
  global inicio
  if (not vazia()):
    for i in range(1, inicio + 1):
      print(f"Posicao: {i:2}: possui o elemento " + str(matriz[i]) + ".")
  else:
    print("Impossivel apresentar - fila vazia.")
  print()

def criar():
  global inicio
  inicio = 0
  for i in range(1, LIMITE + 1):
    matriz[i] = 0

criar()
opcao = 0
while (opcao != 6):
  print("PROGRAMA: FILA\n")
  print("[1] - Entrada")
  print("[2] - Saida")
  print("[3] - Apresentar 1o. da fila")
  print("[4] - Apresentar a fila")
  print("[5] - Nova fila")
  print("[6] - Sair\n")

  opcao = int(input("Escolha uma opcao: "))
  print()

  if (opcao != 6):
    if (opcao == 1):
      entrada()
    elif (opcao == 2):
      saida()
    elif (opcao == 3):
      atual()
    elif (opcao == 4):
      exibicao()
    elif (opcao == 5):
      criar()
