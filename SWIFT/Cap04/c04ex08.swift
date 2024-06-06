// c04ex08.swift

import Foundation

var Transp: Character

print("Escolha o tipo de transporte:\n")
print("[M] - Motocicleta")
print("[S] - Scooter\n")

print("==> ", terminator: "")
if let input = readLine(), let t = input.uppercased().first {
    Transp = t
} else {
    fatalError("Entrada invalida.")
}

if (Transp == "M" || Transp == "S") {
    print("\nTransporte valido.")
} else {
    print("\nTransporte invalido.")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
