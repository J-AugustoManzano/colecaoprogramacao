// c04ex05.swift

import Foundation

print("Entre com um numero equivalente a um mes: ", terminator: "")
if let input = readLine(), let mes = Int(input) {
    switch (mes) {
        case 1:
            print("Janeiro")
        case 2:
            print("Fevereiro")
        case 3:
            print("Março")
        case 4:
            print("Abril")
        case 5:
            print("Maio")
        case 6:
            print("Junho")
        case 7:
            print("Julho")
        case 8:
            print("Agosto")
        case 9:
            print("Setembro")
        case 10:
            print("Outubro")
        case 11:
            print("Novembro")
        case 12:
            print("Dezembro")
        default:
            print("Mes invalido")
    }
} else {
    fatalError("Entrada invalida.")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
