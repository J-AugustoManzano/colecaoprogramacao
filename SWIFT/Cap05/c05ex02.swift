// c05ex02.swift

import Foundation

var RESP: Character = "S"

while (RESP.uppercased() == "S") {
    print("Entre um valor numerico: ", terminator: "")
    if let inputN = readLine(), let N = Int(inputN) {
        let R = N * 3
        print("Resultado = \(R)\n")

        print("Deseja continuar? (S/N): ", terminator: "")
        if let inputRESP = readLine(), 
           let charRESP = inputRESP.uppercased().first {
            RESP = charRESP
        }
    } else {
        print("\nEntrada invalida.\n")
        continue       
    }
    print()
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
