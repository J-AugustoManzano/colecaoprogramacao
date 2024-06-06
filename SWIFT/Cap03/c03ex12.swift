// c03ex12.swift

import Foundation

var A, B, X: Int

print("Entre o 1o. valor numerico inteiro: ", terminator: "")
guard let inputA = readLine(), let intA = Int(inputA) else {
    print("Entrada invalida para o primeiro valor.")
    print("\nTecle <Enter> para encerrar... ", terminator: "")
    _ = readLine()
    exit(0)
}
A = intA

print("Entre o 2o. valor numerico inteiro: ", terminator: "")
guard let inputB = readLine(), let intB = Int(inputB) else {
    print("Entrada invalida para o segundo valor.")
    print("\nTecle <Enter> para encerrar... ", terminator: "")
    _ = readLine()
    exit(0)
}
B = intB

X = A + B
print("Resultado = \(X)")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
