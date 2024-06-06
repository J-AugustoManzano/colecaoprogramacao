// c04ex10.swift

import Foundation

var A, B, C, X: Int

print("Entre valor para a variavel <A>: ", terminator: "")
if let inputA = readLine(), let a = Int(inputA) {
    A = a
} else {
    fatalError("Entrada invalida.")
}

print("Entre valor para a variavel <B>: ", terminator: "")
if let inputB = readLine(), let b = Int(inputB) {
    B = b
} else {
    fatalError("Entrada invalida.")
}

print("Entre valor para a variavel <X>: ", terminator: "")
if let inputX = readLine(), let x = Int(inputX) {
    X = x
} else {
    fatalError("Entrada invalida.")
}

if (!(X > 5)) {
    C = A + B
} else {
    C = A - B
}

print("\nResultado = \(C)")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
