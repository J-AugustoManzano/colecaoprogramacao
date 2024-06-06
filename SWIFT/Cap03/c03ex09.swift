// c03ex09.swift

import Foundation

var Numero: Double!
var Resultado: Double

print("Entre um numero: ", terminator: "")
Numero = Double(readLine()!)

Resultado = pow(Numero, 2.0)

print("Resultado = \(Resultado)")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
