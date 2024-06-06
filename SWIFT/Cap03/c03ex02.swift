// c03ex02.swift

import Foundation

var R: Double, A: Double

print("Entre valor do raio: ", terminator: "")
if let inputR = readLine(), let doubleR = Double(inputR) {
    R = doubleR
} else {
    fatalError("Entrada invalida para o raio")
}

while getchar() != "\n" { }

A = Double.pi * pow(R, 2)

print("Resultado = \(String(format: "%.2f", A))")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
