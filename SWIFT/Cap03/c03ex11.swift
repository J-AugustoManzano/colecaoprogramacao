// c03ex11.swift

import Foundation

var A, B, X: Int 

print("Entre o 1o. valor numerico inteiro: ", terminator: "")
if let inputA = readLine(), let intA = Int(inputA) {
    A = intA

    print("Entre o 2o. valor numerico inteiro: ", terminator: "")
    if let inputB = readLine(), let intB = Int(inputB) {
        B = intB
        X = A + B
        print("Resultado = \(X)")
    } else {
        print("Entrada invalida para o segundo valor.")
    }
} else {
    print("Entrada invalida para o primeiro valor.")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
