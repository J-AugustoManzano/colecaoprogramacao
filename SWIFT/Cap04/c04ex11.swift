// c04ex1.swift

import Foundation

var N, R4, R5: Int

print("Entre um numero inteiro: ", terminator: "")
if let inputN = readLine(), let n = Int(inputN) {
    N = n
} else {
    fatalError("Entrada invalida.")
}

R4 = N % 4
R5 = N % 5

if (R4 == 0 && R5 == 0) {
    print("Resultado = \(N)")
} else {
    print("Valor nao e divisivel por 4 e 5")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
