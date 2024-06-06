// c04ex04.swift

import Foundation

var N1, N2, N3, N4, NE: Float
var MD1, MD2: Float

print("Entre a 1a. nota .......: ", terminator: "")
if let inputN1 = readLine(), let floatN1 = Float(inputN1) {
    N1 = floatN1
} else {
    fatalError("Entrada invalida para a 1a. nota")
}

print("Entre a 2a. nota .......: ", terminator: "")
if let inputN2 = readLine(), let floatN2 = Float(inputN2) {
    N2 = floatN2
} else {
    fatalError("Entrada invalida para a 2a. nota")
}

print("Entre a 3a. nota .......: ", terminator: "")
if let inputN3 = readLine(), let floatN3 = Float(inputN3) {
    N3 = floatN3
} else {
    fatalError("Entrada invalida para a 3a. nota")
}

print("Entre a 4a. nota .......: ", terminator: "")
if let inputN4 = readLine(), let floatN4 = Float(inputN4) {
    N4 = floatN4
} else {
    fatalError("Entrada invalida para a 4a. nota")
}

MD1 = (N1 + N2 + N3 + N4) / 4

if (MD1 >= 7) {
    print("\nAprovado")
    print("Media: \(String(format: "%.2f", MD1))")
} else {
    print("Entre a nota de exame ..: ", terminator: "")
    if let inputNE = readLine(), let floatNE = Float(inputNE) {
        NE = floatNE
    } else {
        fatalError("Entrada invalida para a nota de exame")
    }

    MD2 = (MD1 + NE) / 2

    if (MD2 >= 5) {
        print("\nAprovado em exame")
    } else {
        print("\nReprovado")
    }
    print("Media: \(String(format: "%.2f", MD2))")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
