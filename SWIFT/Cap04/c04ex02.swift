// c04ex02.swift

import Foundation

var A, B, X: Int

print("Entre o 1o. valor numerico: ", terminator: "")
if let inputA = readLine(), let intA = Int(inputA) {
    A = intA
} else {
    fatalError("Entrada invalida.")
}

print("Entre o 2o. valor numerico: ", terminator: "")
if let inputB = readLine(), let intB = Int(inputB) {
    B = intB
} else {
    fatalError("Entrada invalida.")
}

if (A > B) {
    X = A
    A = B
    B = X
}

print("Os valores sao: \(A) e \(B).")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
