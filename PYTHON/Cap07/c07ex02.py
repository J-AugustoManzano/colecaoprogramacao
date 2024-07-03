# c07ex02.py

a = int(input("Entre um valor para a variavel <A>: "))
b = int(input("Entre um valor para a variavel <B>: "))

x = a 
a = b
b = x

print(f"\nVariavel <A> com valor {a}")
print(f"Variavel <B> com valor {b}")

input("\nTecle <Enter> para encerrar... ")
