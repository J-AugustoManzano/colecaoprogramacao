// c03ex10.swift

import Foundation

var Numero, Resultado: Double

print("Entre um numero: ", terminator: "")
if let entraNum = readLine(), let n = Double(entraNum) {
    Numero = n
    Resultado = pow(Numero, 2.0)
    print("Resultado = \(Resultado)")
} else {
    fatalError("Entrada invalida.")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
