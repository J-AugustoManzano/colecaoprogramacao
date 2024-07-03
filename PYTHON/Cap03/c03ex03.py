# c03ex03.py

ht = float(input("Entre quantidade de horas trabalhadas ..: "))
vh = float(input("Entre valor do salario-hora ............: "))
pd = float(input("Entre valor do percentual de desconto ..: "))

sb = ht * vh
td = (pd / 100) * sb
sl = sb - td

print("\nSalario Bruto ...:", f"{sb:.2f}")
print("Salario Liquido .:", f"{sl:.2f}")

input("\nTecle <Enter> para encerrar... ")
