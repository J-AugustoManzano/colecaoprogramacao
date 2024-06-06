// c03ex08.swift

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

import Foundation

var A: Int
var B: Int
var X: Int

// Entrada de dados 

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

// Processamento de dados 

X = A + B // Cálculo da adição

// Saída de dados 

print("Resultado = \(X)")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
