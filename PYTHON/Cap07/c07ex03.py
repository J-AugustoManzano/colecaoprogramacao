# c07ex03.py

def troca():
    global a, b
    x = a
    a = b
    b = x

print("Entre um valor para a variavel <A>: ", end="")
a = int(input())

print("Entre um valor para a variavel <B>: ", end="")
b = int(input())

troca()

print(f"\nVariavel <A> com valor {a}")
print(f"Variavel <B> com valor {b}")

input("\nTecle <Enter> para encerrar... ")
