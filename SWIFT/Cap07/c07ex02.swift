// c07ex02.swift

import Foundation

var A: Int = 0, B: Int = 0, X: Int = 0

repeat {
    print("Entre um valor para a variavel <A>: ", terminator: "")
    if let inputA = Int(readLine() ?? "") {
        A = inputA
        break
    }
    else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
} while (true)

repeat {
    print("Entre um valor para a variavel <B>: ", terminator: "")
    if let inputB = Int(readLine() ?? "") {
        B = inputB
        break
    }
    else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
} while (true)

X = A
A = B
B = X

print()
print("Variavel <A> com valor \(A)")
print("Variavel <B> com valor \(B)")

print()
print("Pressione <Enter> para encerrar...", terminator: "")
_ = readLine()
