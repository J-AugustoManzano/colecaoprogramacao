// c03ex01.swift

import Foundation

var A: Int
var B: Int
var X: Int

print("Entre o 1o. valor numerico inteiro: ", terminator: "")
if let inputA = readLine(), let intA = Int(inputA) {
    A = intA
} else {
    fatalError("Entrada invalida.")
}

print("Entre o 2o. valor numerico inteiro: ", terminator: "")
if let inputB = readLine(), let intB = Int(inputB) {
    B = intB
} else {
    fatalError("Entrada invalida.")
}

X = A + B

print("Resultado = \(X)")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
