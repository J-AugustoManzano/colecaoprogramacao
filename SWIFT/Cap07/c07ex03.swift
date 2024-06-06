// c07ex03.swift

import Foundation

var A: Int = 0, B: Int = 0

func TROCA() {
	var X: Int
    X = A
    A = B
    B = X
}

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

TROCA()

print("\nVariável <A> com valor \(A)")
print("Variável <B> com valor \(B)\n")

print("Pressione <Enter> para encerrar...", terminator: "")
_ = readLine()
