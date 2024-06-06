// c04ex07.swift

import Foundation

var numero: Int

print("Entre um numero inteiro: ", terminator: "")
guard let input = readLine(), let numero = Int(input) else {
    fatalError("Entrada invalida.")
}

if (numero >= 20 && numero <= 90) {
    print("O numero esta na faixa de 20 a 90.")
} else {
    print("O numero esta fora da faixa de 20 a 90.")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
