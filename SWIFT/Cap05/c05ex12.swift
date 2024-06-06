// c05ex12.swift

import Foundation

for _ in stride(from: 1, to: 6, by: 1) {
    print("Entre um valor numerico: ", terminator: "")
    if let inputN = readLine(), let N = Int(inputN) {
        let R = N * 3
        print("Resultado = \(R)\n")
    } else {
        print("\nEntrada invalida.\n")
        continue       
    }
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
