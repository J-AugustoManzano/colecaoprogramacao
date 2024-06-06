// c04ex06.swift

import Foundation

print("Entre o 1o. valor numerico: ", terminator: "")
guard let inputA = readLine(), let a = Float(inputA) else {
    fatalError("Entrada invalida.")
}

print("Entre o 2o. valor numerico: ", terminator: "")
guard let inputB = readLine(), let b = Float(inputB) else {
    fatalError("Entrada invalida.")
}

print()
print("Escolha uma opcao de menu:")
print()
print("[1] - Adicao")
print("[2] - Subtracao")
print("[3] - Multiplicacao")
print("[4] - Divisao")
print()

print("==> ", terminator: "")
guard let inputOpcao = readLine(), let opcao = Int(inputOpcao) else {
    fatalError("Entrada invalida.")
}

print()

switch (opcao) {
    case 1:
        print("Calculo de adicao")
        print("Resultado: \(String(format: "%.2f", (a + b)))") 
    case 2:
        print("Calculo de subtracao")
        print("Resultado: \(String(format: "%.2f", (a - b)))")
    case 3:
        print("Calculo de multiplicacao")
        print("Resultado: \(String(format: "%.2f", (a * b)))")
    case 4:
        print("Calculo de divisao")

        if (b == 0) {
            print("Resultado: ERRO")
        } else {
            print("Resultado: \(String(format: "%.2f", (a / b)))")
        }
    default:
        print("Entrada invalida")
        print("Tente novamente em outro momento")
}

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
