// c05ex01.swift

import Foundation

var I = 1
while (I <= 5) {
    print("Entre um valor numerico: ", terminator: "")
    if let inputN = readLine(), let N = Int(inputN) {
        let R = N * 3
        print("Resultado = \(R)\n")
    } else {
        print("\nEntrada invalida.\n")
        continue       
    }
    I += 1
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
