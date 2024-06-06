// c06ex04.swift

import Foundation

var N = 0
var A: [String] = []
var I: Int

repeat {
    print("Entre a quantidade de elementos: ", terminator: "")
    guard let inputN = readLine(), let quantidade = Int(inputN) else {
        print()
        print("Entrada invalida. Informe numero inteiro.")
        print()
        continue
    }
    N = quantidade
    break
} while (true)

print()
for I in 0...(N - 1) {
    print("Entre o \(I + 1)o. nome: ", terminator: "")
    if let nome = readLine() {
        A.append(nome)
    }
}

print("\nForam fornecidos os nomes:\n")
for I in 0...(N - 1) {
    print("Nome \(I + 1) = \(A[I])")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
