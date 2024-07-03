# c04ex02.py

a = float(input("Entre o 1o. valor numerico: "))
b = float(input("Entre o 2o. valor numerico: "))

if (a > b):
  x = a
  a = b
  b = x

print(f"Os valores sao: {a} e {b}.")

print()
input("Tecle <Enter> para encerrar... ")
