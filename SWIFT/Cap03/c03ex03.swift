// c03ex03.swift

import Foundation

var HT, VH, PD, SB, TD, SL: Double

print("Entre quantidade de horas trabalhadas ..: ", terminator: "")
if let inputHT = readLine(), let doubleHT = Double(inputHT) {
    HT = doubleHT
} else {
    fatalError("Entrada invalida para quantidade de horas trabalhadas")
}

print("Entre valor do salario-hora ............: ", terminator: "")
if let inputVH = readLine(), let doubleVH = Double(inputVH) {
    VH = doubleVH
} else {
    fatalError("Entrada invalida para valor do salário-hora")
}

print("Entre valor do percentual de desconto ..: ", terminator: "")
if let inputPD = readLine(), let doublePD = Double(inputPD) {
    PD = doublePD
} else {
    fatalError("Entrada invalida para valor do percentual de desconto")
}

SB = HT * VH
TD = (PD / 100) * SB
SL = SB - TD

print("\n")
print("Salario Bruto ....: \(SB)")
print("Salario Liquido ..: \(SL)")

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
