// c05ex11.swift

import Foundation

for _ in 1...5 {
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
